require "../config/application.cr"

user = User.with_password("testpass").nickname("admin").save

3.times do |index|
  Post.new(
    user: user,
    title: "Title #{index}",
    content: "Random content"
  ).save
end
