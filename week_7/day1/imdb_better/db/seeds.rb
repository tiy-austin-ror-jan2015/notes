# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



10.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
    )
  5.times do
    user.posts.create(
      movie_title: Faker::Name.name,
      clip_url: "https://www.youtube.com/watch?v=4feIwig2AtA",
      description: Faker::Lorem.sentence(3),
      poster_image: Faker::Avatar.image("my-own-slug", "50x50")
      )
  end
end
