# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   require "faker"
require "faker"
CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name  ,
    address: Faker::Address.street_address,
    category: CATEGORY[rand(0..4)],
    phone_number: Faker::PhoneNumber.cell_phone_in_e164 
  )
  restaurant.save!
end
puts 'restaurant Finished!'

5.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant_id: 1 
  )
  review.save
end
puts 'review 1 Finished!'
5.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant_id: rand(1..3)
  )
  review.save!
end
puts 'review 2 Finished!'



#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

