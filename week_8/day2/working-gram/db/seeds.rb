# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
  5.times do
    user.posts.create(title: Faker::Lorem.sentence(1))
  end
end

15.times do
  Comment.create(user_id: User.all.sample.id, post_id: Post.all.sample.id, title: Faker::Lorem.sentence(1))
end
