# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }
gartensalon = { name: "gartensalon", address: "München Schwabing", category: "french", phone_number: "089123456" }
sushiandsoul = { name: "sushiandsoul", address: "München Lehel", category: "japanese", phone_number: "089123456" }
beergarden = { name: "beergarden", address: "München Neuhausen", category: "belgian", phone_number: "089123456" }
goldenerakete = { name: "goldenerakete", address: "München Glockenbach", category: "chinese", phone_number: "089123456" }
roecklplatz = { name: "roecklplatz", address: "München Isarvorstadt", category: "italian", phone_number: "089123456" }
[ gartensalon, sushiandsoul, beergarden, goldenerakete, roecklplatz ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
