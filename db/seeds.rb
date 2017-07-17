30.times do
  content = Faker::Lorem.sentence
  post = Post.new
  post.content = content
  post.save
end
