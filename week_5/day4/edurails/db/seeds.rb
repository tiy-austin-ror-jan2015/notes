# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  company = Company.create(name: Faker::Company.name)
  50.times do
    company.employees.create(name: Faker::Name.name, job_title: Faker::Name.title)
    company.locations.create(name: Faker::Address.city)
    location = company.locations.last
    30.times do
      location.courses.create(title: Faker::Company.catch_phrase,
                              reqs: Faker::Commerce.product_name,
                              enrollment_cap: Faker::Number.number(2))
    end
  end
end
