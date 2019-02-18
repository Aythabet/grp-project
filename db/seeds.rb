require 'faker'
puts "Generating Escorts"

10.times do
  escort = Escort.new(
  pseudo: Faker::Internet.username,
  city: Faker::Address.city,
  price: Faker::Number.within(50..200),
  service: Faker::Superhero.power,
  status: ["Available", "Not Available"].sample,
  gender: Faker::Gender.binary_type,
  age: Faker::Number.within(18..69),
  contact: Faker::Internet.email
  )
  escort.save!
end

puts "Escorts generated"
