30.times do
  content = Faker::Lorem.sentence
  post = Post.new
  post.content = content
  post.save
end

10.times do
  name = Faker::Twitter.user[:screen_name]
  password = "password"
  User.create(name: name, password: password, password_confirmation: password)
end
