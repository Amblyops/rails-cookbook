# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Recipe.create(name: "Overnight Porridge", description: "Easy recipe for luxury whole-food breakfast", rating: 5.0)
Recipe.create(name: "Devilled Bacon", description: "Simple, tasty cheap 'student food' ", rating: 4.7)
Recipe.create(name: "Basic Omelette", description: "Two ingredient meal, ", rating: 4.5)
Recipe.create(name: "Roast Halloumi and Sweet Potatoes", description: "Very quick dinner,  roast halloumi with sweet potatoes", rating: 3.4)
