# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning db..."
Restaurant.destroy_all

puts "creating resto..."
Restaurant.create!(name: "Dishoom", address: "5 rue chti, Paris", phone_number: "0123456789", category: "french")
puts "created Dishoom"

Restaurant.create!(name: "Pizzeria sd", address: "23 rue sef, Paris", phone_number: "0123451234", category: "italian")
puts "created pizzeria"

Restaurant.create!(name: "Burger Kind", address: "London", phone_number: "0987654321", category: "belgian")
puts "created BK"

Restaurant.create!(name: "Boulangerie", address: "1 rue kjh, Paris", phone_number: "0666666666", category: "french")
puts "created Boulangerie"

Restaurant.create!(name: "Macdonalds", address: "Arc de triomphe", phone_number: "0777777777", category: "japanese")
puts "created McD"

puts "finishgted! created #{Restaurant.count} restaurants"
