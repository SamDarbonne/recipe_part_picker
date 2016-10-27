# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all


yam = Ingredient.create(name: 'Yam')
veg_broth = Ingredient.create(name: 'Vegetable Broth')
carrot = Ingredient.create(name: 'Carrot')
beef_broth = Ingredient.create(name: 'Beef Broth')
chicken_breast = Ingredient.create(name: 'Chicken Breast')
p "created ingredients:"
for ingredient in Ingredient.all
	p "  " + ingredient.name
end

yam_soup = Recipe.create(name: 'Yam Soup')
yam_soup.ingredients << [yam, carrot, veg_broth]

chicken_soup = Recipe.create(name: 'Chicken Soup')
chicken_soup.ingredients << [chicken_breast, beef_broth, veg_broth, yam, carrot]

carrot_plate = Recipe.create(name: 'Plate of Carrots')
carrot_plate.ingredients << [carrot]