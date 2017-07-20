30.times do
  content = Faker::Lorem.sentence
  post = Post.new
  post.content = content
  post.save
end

password = "password"
User.create(name: "hogehoge", password: password, password_confirmation: password)
9.times do
  name = Faker::Twitter.user[:screen_name]
  User.create(name: name, password: password, password_confirmation: password)
end
