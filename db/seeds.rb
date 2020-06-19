# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Generating 3 flats'
Flat.destroy_all
puts 'database is clean'
puts 'creating flats'
Flat.create!(
  name: Faker::Company.name,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  price_per_night: rand(10..500),
  number_of_guests: rand(1..10),
  picture_url: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200'
)

Flat.create!(
  name: Faker::Company.name,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  price_per_night: rand(10..500),
  number_of_guests: rand(1..10),
  picture_url: 'https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=1200'
)

Flat.create!(
  name: Faker::Company.name,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  price_per_night: rand(10..500),
  number_of_guests: rand(1..10),
  picture_url: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200'
)
puts 'done'
