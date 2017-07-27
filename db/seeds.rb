# User
password = "password"
User.create(name: "hogehoge", password: password, password_confirmation: password)
9.times do
  name = Faker::Twitter.user[:screen_name]
  User.create(name: name, password: password, password_confirmation: password)
end

# Post
5.times do
  content = Faker::Lorem.sentence
  post = Post.new
  post.content = content
  post.user_id = User.first.id
  post.save
end

25.times do
  content = Faker::Lorem.sentence
  post = Post.new
  post.content = content
  post.user_id = User.pluck(:id).sample
  post.save
end
