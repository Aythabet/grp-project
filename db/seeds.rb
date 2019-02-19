require 'faker'
puts "Generating Escorts"
Escort.destroy_all
Reservation.destroy_all

user = User.create

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
    photos: "https://thispersondoesnotexist.com/"
  )
  escort.save!

  reservation = Reservation.new(
    date: ["2019-03-17", "2019-05-31", "2019-05-13", "2019-03-08"].sample,
    status: ["Confirmed", "Pending", "Done"].sample,
    message: ["Looking forward to see some hot stuff", "No comment", "Feeling EXCITED", "Ouuh Uhhh"].sample,
    escort: escort,
    user: user
  )
  reservation.save!
end

puts "Escorts generated"
puts "Reservations generated"
