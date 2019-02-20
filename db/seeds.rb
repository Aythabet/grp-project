require 'faker'
puts "Generating Escorts"
Reservation.destroy_all
Escort.destroy_all


user = User.create
# images = ["../app/assets/images/1.jpg"]

5.times do
  escort = Escort.new(
    pseudo: Faker::Internet.username,
    city: Faker::Address.city,
    price: Faker::Number.within(50..200),
    service: [Faker::Superhero.power, Faker::Games::Pokemon.name , Faker::ElectricalComponents.passive],
    status: ["Available", "Not Available"].sample,
    gender: Faker::Gender.binary_type,
    contact: Faker::Internet.email,
    photos: "Pictures"
  )
  escort.save!

  reservation = Reservation.new(
    date: ["2019-03-17", "2019-05-31", "2019-05-13", "2019-03-08"].sample,
    status: ["Confirmed", "Pending", "Done"].sample,
    message: ["Looking forward to see some fine stuff", "No comment", "Feeling EXCITED", "Ouuh Uhhh"].sample,
    escort: escort,
    user: user
  )
  reservation.save!
end

puts "Escorts generated"
puts "Reservations generated"
