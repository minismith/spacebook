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

user = User.create(first_name: "Leena", last_name: "Aden", email: "leena@gmail.com", password: "123456")

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
# space.photo.key in view

file = URI.open("https://www.hirethesciencemuseum.com/wp-content/uploads/2018/12/KrisHumphreysPhotographyc_-86-1.jpg")
space = Space.new(name: "Science Museum", description: "Our amazing exhibitions, astounding galleries and creative blank canvas spaces combine to make the Science Museum a unique and inspiring London venue for corporate or private hire. Take advantage of the museum’s diverse range of spaces and unparalleled opportunities for accessible, exciting event experiences in the cultural heart of the capital.", address:"195 Hackney Rd, London E2 8JL",
                  price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://images.squarespace-cdn.com/content/v1/5b4f07024eddec73df849c5b/1534849958994-0H294JKKHIWA7SNMWNAT/Labs+Camden+house+%C2%A9++LUZ-4.jpg?format=2500w")
space = Space.new(name:"Huge office space", description: "The property comprises a detached building of steel frame construction with glazed elevations, arranged over ground and 14 upper floors, providing retail accommodation on the ground floor, and office space on all upper floors. The property is located in the Docklands development within South Quay. Crossharbour and South Quay DLR Stations provide local access to public transport links.", address: "7 Boundary St, London E2 7JE", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.tagvenue.com/blog/wp-content/uploads/2016/10/Devonshire-Terrace-01.jpg")
space = Space.new(name: "Beautiful wedding venue", description: "Our original Victorian building is where you and your guests will stay while you’re with us. There are 12 bedrooms (with a further eight in the Coach House), a bar, lounge, library and loft with makeup stations. Think of it as your own private country house.", address: "136 Kingsland Rd, London E2 8EA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.peerspace.com/resources/wp-content/uploads/2018/05/vfhik8o2ifudxhhvxhfn.jpg")
space = Space.new(name: "Meeting room", description: "Large meeting or event space, with movable tables to accommodate multiple layouts, from space for classroom style training courses to large presentations. The room features an LED screen, whiteboard and high-speed Wi-Fi.", address: "Falkirk St, London N1 6HQ", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHeBfi7fXqjTWtZiy0Hq-UPD7msPd2ih9QGC3hbVVaYmFY-DwnKki58c5_3sezbQIJg7c&usqp=CAU")
space = Space.new(name: "Studious lecture hall", description: "The Venue housed in a grade two listed building that has been thoroughly renovated is ideal for a product launch, presentation, talk, seminar, performance or keynote lecture. Our air-conditioned lecture theatre accommodates up to 220 delegates in comfortable tiered seating. This impressive space is equipped with fully digital audio-visual system, comprising a high definition projector, side screens and a multi-function lectern.", address: "49 Hackney Rd, London E2 7NX", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.paintworksbristol.co.uk/fileadmin/user_upload/Evoke-Event-Space_096_1200.jpg")
space = Space.new(name: "Ultimate party palace", description: "Welcome to The Party Palace, where we believe Dreams Come True! At The Party Palace, our goal is to put big smiles on little faces. We aim to give your child the most magical and unforgettable parties and events, that will be remembered for years to come.
Choose from one of our already built Magical Packages, or build your own package in order to suit your requirements best. Our team will work to ensure your party is just as you imagined and bring The Magic to life! ", address: "151-157 City Rd, London EC1V 1JH", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPH-SdVpErAodvRZU-j33sZgZkuw8bnwYNiw&usqp=CAU")
space = Space.new(name: "Bat mitzvah paradise", description: "Kent House Knightsbridge is a versatile Victorian townhouse that stylishly combines a grand royal history yet has the intimacy of a private house. It boasts many beautiful period features including ornate cornicing, marble floors, a sweeping staircase and skylight, and large floor to ceiling windows. The elegance of the house provides the perfect backdrop to any Bar Mitzvah celebration and can be styled to suit you.", address: "119 St Peter's St, London N1 8PZ", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.socialtables.com/wp-content/uploads/2018/06/5-1.jpg")
space = Space.new(name: "Uber cool creative space", description: "The historic building dates back to 1936  featuring a red-brick tower with stunning structural design elements which is filled by natural daylight and has outdoor terraces which overlook onto a beautiful 30-acre lake in the heart of Hackney.", address: "The Trafford Centre, Trafford Park, Stretford, Manchester M17 8AA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.millbrook.co.uk/media/ftffitpy/smmt-drive-zero-corporate-event-millbrook-venues.jpg?anchor=center&mode=crop&width=705&height=636&rnd=132521724952500000")
space = Space.new(name: "100% virtual zone", description: "A contemporary co-working space that benefits from high ceilings, natural daylight and plants to increase productivity. The recently refurbished lounge is ideal for networking, workshops and presentations with a capacity of up to 120 people standing.", address: "Liverpool Rd, Manchester M3 4FP", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/743/cached.offlinehbpl.hbpl.co.uk/news/OMC/queen_hoxton_london_event_venue_rooftop_outdoor_private_hire-20150617033823336.jpg")
space = Space.new(name: "Beautiful garden space", description: "Set against the impressive backdrop of Grade I listed almshouses, Shoreditch Gardens at the Museum of the Home is a truly unique venue that has recently undergone a £12million refurbishment.

  Shoreditch Gardens offers clients a fully inclusive party package with everything needed for the perfect corporate or private summer soiree. Whether you're celebrating with a family fun day or bringing your staff together for a team building activity - our flexible spaces mean we can create a bespoke event to suit your requirements.", address: "Salford Lads' Club, Coronation St, Salford M5 3SA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://www.uniquevenuesoflondon.co.uk/sites/default/files/styles/venue_cover/public/cover/Standard%20set%20up_0.jpg?itok=aolT5Ihg")
space = Space.new(name: "Rooftop escape", description: "With four floors and eight spaces, Pantechnion got a big collection of beautifully set tables, hidden nooks and inviting areas available to hire, whether it be for work or play. There are plenty of options for private dining and tables to hire in the different restaurants. When sending your enquiry make sure to ask the professional staff what the menu looks like in the space that you are interested in. Regardless, you’re sure to be served some amazing food inspired by Japanese and Scandinavian cuisine.", address: "4/5 Pavilion Buildings, Brighton BN1 1EE", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzhJH7iT7NpKkG59sVtx2JGX6m7jDsDn_4RA&usqp=CAU")
space = Space.new(name: "Office bar", description: "Located in Shoreditch, Strongroom Bar is a multi-functional venue that operates as a cafe and workspace in the day and a social hub of activity at night.

  We have our newly renovated main space that lets in a lot of natural light and is a great option for meetings, workspaces and even conferences with our use of projector and speakers.

  Our courtyard seats up to 150 people and has been used for large scale events, networking or a great place to have a meeting.", address: "8 Marine Parade, Kemptown, Brighton BN2 1TA", price_per_day: rand(10..500), user: User.first)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
space.save

puts 'spaces have been made'
