# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  question = Question.create({
    title: Faker::Lorem.word,
    body: Faker::Lorem.sentence(3),
    tags: Faker::Lorem.words(3)
  })

  3.times do
    question.answers.create({
      body: Faker::Lorem.sentence(5)
    })
  end
end
