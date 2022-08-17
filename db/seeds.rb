# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", rating: 5}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",  category: "french", rating: 4}
bingo = {name: "bingo", address: "7 Boundary St, London E2 7JE", category: "french", rating: 4 }
sugar_bar =  {name: "sugar_bar", address: "56A Shoreditch High St, London E1 6PQ", category: "french", rating: 4}
croque = {name: "croque", address: "7 Boundary St, London E2 7JE", category: "french", rating: 5}

[dishoom, pizza_east, bingo, sugar_bar, croque].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
