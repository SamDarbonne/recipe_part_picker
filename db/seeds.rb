# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all

ingredient_list = [{
										name: 'Yam'
									},
									{
										name: 'Carrot'
									},
									{
										name: 'Broth'
									}]

recipe_list = [{
								name: 'Yam Stew',
							},
							{
								name: 'Mashed Yams'
							}]
for ingredient in ingredient_list
	Ingredient.create(ingredient)
	puts "created ingredient: #{ingredient[:name]}"
end

for recipe in recipe_list
	Recipe.create(recipe)
	puts "created recipe: #{recipe[:name]}"
end

Recipe.first.ingredients << [Ingredient.first, Ingredient.third]


Recipe.second.ingredients << [Ingredient.first, Ingredient.second]