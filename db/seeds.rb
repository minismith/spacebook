# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require 'faker'

puts "Cleaning the database"
Booking.destroy_all
Space.destroy_all
User.destroy_all

puts 'creating 12 event spaces'

user = User.create(email: "leena@gmail.com", password: "123456")

12.times do
  # spaces = Space.new(
  #   name:Faker::App.name,
  #   # raise
  #   description:Faker::Lorem.sentence(word_count: 10),
  #   address:Faker::Address.full_address,
  #   price_per_day: rand(10..500),
  #   user: User.first
  # )
  # spaces.save!
end

puts 'spaces have been made'
# space.photo.key in view

file = URI.open("https://www.hirethesciencemuseum.com/wp-content/uploads/2018/12/KrisHumphreysPhotographyc_-86-1.jpg")
space = Space.new(name: "museum", description: Faker::Lorem.sentence(word_count: 10), address:"195 Hackney Rd, London E2 8JL",
                  price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://images.squarespace-cdn.com/content/v1/5b4f07024eddec73df849c5b/1534849958994-0H294JKKHIWA7SNMWNAT/Labs+Camden+house+%C2%A9++LUZ-4.jpg?format=2500w")
space = Space.new(name:"office mixer", description: Faker::Lorem.sentence(word_count: 10), address: "7 Boundary St, London E2 7JE", price_per_day: "")
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.tagvenue.com/blog/wp-content/uploads/2016/10/Devonshire-Terrace-01.jpg")
space = Space.new(name: "wedding venue", description: Faker::Lorem.sentence(word_count: 10), address: "136 Kingsland Rd, London E2 8EA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.peerspace.com/resources/wp-content/uploads/2018/05/vfhik8o2ifudxhhvxhfn.jpg")
space = Space.new(name: "communal meeting", description: Faker::Lorem.sentence(word_count: 10), address: "Falkirk St, London N1 6HQ", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHeBfi7fXqjTWtZiy0Hq-UPD7msPd2ih9QGC3hbVVaYmFY-DwnKki58c5_3sezbQIJg7c&usqp=CAU")
space = Space.new(name: "lecture hall", description: Faker::Lorem.sentence(word_count: 10), address: "49 Hackney Rd, London E2 7NX", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.paintworksbristol.co.uk/fileadmin/user_upload/Evoke-Event-Space_096_1200.jpg")
space = Space.new(name: "party palace", description: Faker::Lorem.sentence(word_count: 10), address: "151-157 City Rd, London EC1V 1JH", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPH-SdVpErAodvRZU-j33sZgZkuw8bnwYNiw&usqp=CAU")
space = Space.new(name: "open night", description: Faker::Lorem.sentence(word_count: 10), address: "119 St Peter's St, London N1 8PZ", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.socialtables.com/wp-content/uploads/2018/06/5-1.jpg")
space = Space.new(name: "creative affairs", description: Faker::Lorem.sentence(word_count: 10), address: "The Trafford Centre, Trafford Park, Stretford, Manchester M17 8AA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.millbrook.co.uk/media/ftffitpy/smmt-drive-zero-corporate-event-millbrook-venues.jpg?anchor=center&mode=crop&width=705&height=636&rnd=132521724952500000")
space = Space.new(name: "virtual zone", description: Faker::Lorem.sentence(word_count: 10), address: "Liverpool Rd, Manchester M3 4FP", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/743/cached.offlinehbpl.hbpl.co.uk/news/OMC/queen_hoxton_london_event_venue_rooftop_outdoor_private_hire-20150617033823336.jpg")
space = Space.new(name: "garden space", description: Faker::Lorem.sentence(word_count: 10), address: "Salford Lads' Club, Coronation St, Salford M5 3SA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.uniquevenuesoflondon.co.uk/sites/default/files/styles/venue_cover/public/cover/Standard%20set%20up_0.jpg?itok=aolT5Ihg")
space = Space.new(name: "rooftop escape", description: Faker::Lorem.sentence(word_count: 10), address: "4/5 Pavilion Buildings, Brighton BN1 1EE", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzhJH7iT7NpKkG59sVtx2JGX6m7jDsDn_4RA&usqp=CAU")
space = Space.new(name: "office bar", description: Faker::Lorem.sentence(word_count: 10), address: "8 Marine Parade, Kemptown, Brighton BN2 1TA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save
