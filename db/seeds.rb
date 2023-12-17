# db/seeds.rb

# Create an admin user
User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: User.roles[:admin]
)

# Create a regular user
User.create!(
  email: 'SSehgal@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: User.roles[:user]
)

# Create posts and associated comments
10.times do |x|
  # Create a post for the first user (admin in this case)
  post = Post.create!(
    title: "Title #{x}",
    body: "Body #{x} words go here IDK",
    user_id: User.first.id
  )

  # Create comments for the second user
  5.times do |y|
    Comment.create!(
      body: "Comment #{y}",
      user_id: User.second.id,
      post_id: post.id
    )
  end
end
