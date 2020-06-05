# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "cherry")
Ingredient.create(name: "mint")
Ingredient.create(name: "lime")

counter = 0

5.times do
  cocktail = Cocktail.new(name: "keoflex#{counter}")
  cocktail.save
  2.times do
    dose = Dose.new(description: "3cl of", cocktail_id: cocktail)
    dose.save
  end
  counter += 1
  p counter
end
