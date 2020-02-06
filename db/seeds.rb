City.destroy_all
User.destroy_all


10.times do
  City.create!(name: Faker::Address.city, zip: Faker::Number.number(digits: 5))
end


50.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 6), email: Faker::Internet.email, age: Faker::Number.between(from: 1, to: 99), city: City.all.sample)
end


20.times do
  Ragot.create!(title: Faker::Book.title, content: Faker::Lorem.sentence(word_count: 6), user: User.all.sample)
end

10.times do
  Tag.create!(title: Faker::Lorem.words(number: 1))
end

puts "Yeeeeeeaaah Sankaaa ça marche la bdd est ready."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
