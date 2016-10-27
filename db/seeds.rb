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

yam_soup = Recipe.create(name: 'Yam Soup', image_url: 'http://simplecookingstudio.com/Sweet%20Yam%20Soup.jpg')
yam_soup.ingredients << [yam, carrot, veg_broth]

chicken_soup = Recipe.create(name: 'Chicken Soup', image_url: 'http://img1.cookinglight.timeinc.net/sites/default/files/styles/500xvariable/public/image/2012/01/1201p116-good-old-fashioned-chicken-soup-x.jpg?itok=pFMU7EvJ')
chicken_soup.ingredients << [chicken_breast, beef_broth, veg_broth, yam, carrot]

carrot_plate = Recipe.create(name: 'Plate of Carrots', image_url: 'https://cristinajmcdaniel.files.wordpress.com/2013/03/carrot-diet-plate.jpg')
carrot_plate.ingredients << [carrot]

mashed_yams = Recipe.create(name: 'Mashed Yams', image_url: 'http://frugalanticsrecipes.com/wp-content/uploads/2013/11/Mashed-Cheddar-Sweet-Potatoes.jpg')
mashed_yams.ingredients << [yam]

loaded_yams = Recipe.create(name: 'Loaded Mashed Yams', image_url: 'http://2.bp.blogspot.com/-VQyCqDwvqPw/TrGzQSRDjpI/AAAAAAAATBs/mdab1Ch8nIo/s1600/1-twice-baked-sweet-potato-feta-500x500-kalynskitchen.jpg')
loaded_yams.ingredients << [yam]









