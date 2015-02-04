# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contact.create(first_name: 'Justin', last_name: 'Herrick', email: 'justin@theironyard.com',
	            age: 999, twitter: 'jah2488', github: 'jah2488', phone_number: '813 285 2678')

10.times do 
	Contact.create(first_name: Faker::Name.first_name,
		             last_name: Faker::Name.last_name,
		             email: Faker::Internet.email,
		             age: rand(18..100),
		             twitter: Faker::Internet.user_name,
		             github: Faker::Internet.user_name,
		             phone_number: Faker::PhoneNumber.cell_phone)
end