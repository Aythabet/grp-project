require 'faker'
puts "Generating Escorts"
Escort.destroy_all

10.times do
  escort = Escort.new(
  pseudo: Faker::Internet.username,
  city: Faker::Address.city,
  price: Faker::Number.within(50..200),
  service: [Faker::Superhero.power, Faker::Games::Pokemon.name , Faker::ElectricalComponents.passive],
  status: ["Available", "Not Available"].sample,
  gender: Faker::Gender.binary_type,
  age: Faker::Number.within(18..69),
  contact: Faker::Internet.email,
  photos: Faker::Avatar.image("my-own-slug", "50x50", "bmp") )
  escort.save!
end

puts "Escorts generated"
