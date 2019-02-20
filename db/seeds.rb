require 'faker'
puts "Generating Escorts"
Reservation.destroy_all
Escort.destroy_all


user = User.create
escorts_images = [
  'https://res.cloudinary.com/daeahsosj/image/upload/v1550672218/samples/escorts/escort1.jpg',
  'https://res.cloudinary.com/daeahsosj/image/upload/v1550672231/samples/escorts/escort2.png',
  'https://res.cloudinary.com/daeahsosj/image/upload/v1550672219/samples/escorts/escort3.jpg',
  'https://res.cloudinary.com/daeahsosj/image/upload/v1550672219/samples/escorts/escort4.jpg',
  'https://res.cloudinary.com/daeahsosj/image/upload/v1550672237/samples/escorts/escort5.jpg'
]
i = 0

5.times do
  escort = Escort.new(
    pseudo: Faker::Internet.username,
    city: Faker::Address.city,
    price: Faker::Number.within(50..200),
    service: [Faker::Superhero.power, Faker::Games::Pokemon.name , Faker::ElectricalComponents.passive],
    status: ["Available", "Not Available"].sample,
    gender: Faker::Gender.binary_type,
    contact: Faker::Internet.email,
    photos: escorts_images[i]
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
  i += 1
end

puts "Escorts generated"
puts "Reservations generated"
