class Post < Granite::Base
  has_one :user

  adapter pg
  table_name posts

  primary id : Int64
  field content : String
  field title : String
  field active : Bool
  timestamps
end
