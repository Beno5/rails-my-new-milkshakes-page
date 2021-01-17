# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying everything"

Ingredient.destroy_all
Milkshake.destroy_all
User.destroy_all

puts "destroyed!"

puts "creating users"

beno = User.create!(email: "beno@example.com", password: "benjamin")
adna = User.create!(email: "adna@example.com", password: "benjamin")

puts "Users created, creating milkshakes"

protein = Milkshake.create(name: 'Protein milkshake', description: "It's great milkshake. You need to try it!", user: beno)

puts "Milkshakes created! creating ingredients"

ingredients = Ingredient.create([{ name: "Milk"}, { name: "Protein"}, { name: "Nuts"}, { name: "Strawberys"}, { name: "Bannana"}, { name: "Orange"}])

puts "ingredients created"

dose = Dose.create(name: "5 ml", ingredient: Ingredient.first, milkshake: Milkshake.first )
dose = Dose.create(name: "5 g", ingredient: Ingredient.last, milkshake: Milkshake.first )
dose = Dose.create(name: "1 stuck", ingredient: Ingredient.first, milkshake: Milkshake.first )

puts "all done!"
