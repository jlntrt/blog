require "crypto/bcrypt/password"

class User < Granite::Base
  adapter pg
  table_name users

  primary id : Int64
  field nickname : String
  field passhash : String
  timestamps

  def self.with_password(password)
    passhash = Crypto::Bcrypt::Password.create(password, cost: 10)

    user = User.new
    user.passhash = passhash.to_s
    user
  end

  def nickname(nickname)
    self.nickname = nickname

    self
  end
end
