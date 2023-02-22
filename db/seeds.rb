# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ambar = { name: "Ambar", address: "München - Giesing", category: "italian" }
djangos = { name: "Django's", address: "München - Giesing", category: "italian" }
balan_deli = { name: "Balan Deli", address: "München - Giesing", category: "french" }
dantler = { name: "Der Dantler", address: "München - Giesing", category: "japanese" }
kulinariat = { name: "Das Kulinariat", address: "München - Westend", category: "japanese" }

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

[ambar, djangos, balan_deli, dantler, kulinariat].each do |attr|
  restaurant = Restaurant.create!(attr)
  puts "Created #{restaurant.name}"
end

puts "Seeding finished"
