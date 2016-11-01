# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all

user_data = [{
		email: 'sam@gmail.com', 
		password: 'pass', 
		username: 'samwise≈gamgee', 
		chef: true,
		description: 'Samwise Gamgee is a truly world class chef, with roots in The Shire. Sam took up cooking in order to feed his fearless leader and employer, Mr. Frodo.',
		profile_image: 'https://pbs.twimg.com/profile_images/2261379935/image.jpg'
	},
	{
		email: 'sam2@gmail.com', 
		password: 'pass', 
		username: 'Bobby Flay', 
		chef: true,
		description: 'Born in New York City in 1964, Bobby Flay opened his first restaurant, Mesa Grill, in 1991, winning immediate acclaim. He made his first appearance on the Food Network in 1994 and soon became a television fixture in the vein of fellow celebrity chefs Mario Batali, Emeril Lagasse and Rachael Ray. Flay has hosted several Food Network shows, including Grill It! with Bobby Flay and Throwdown with Bobby Flay.',
		profile_image: 'http://www.theculinaryconnect.com/wp-content/uploads/2016/01/bobby-flay.jpg'
	},
	{
		email: 'sam3@gmail.com',
		password: 'pass',
		username: 'Big-Love-32',
		chef: true,
		description: 'This guy has a lot of love to spread around, and it shows in his cooking.',
		profile_image: 'http://purple-drank.com/wp-content/uploads/2016/05/Big-Love-Houstons-Best-Officially.jpg'
	},
	{
		email: 'test',
		password: 'pass',
		username: 'not-a-chef',
		chef: false,
	},
	{
		email: 'oldpeople@old.people',
		password: 'pass',
		username: 'oldguy',
		chef: true,
		description: 'Probably too old to be a chef but definitely too grumpy for us to let him know.',
		profile_image: 'http://www.littlegeeklost.com/wp-content/uploads/2014/10/Grumpy-old-man-Thumbnail-e1360740181671.jpg'
	}]
for user in user_data
	new_user = User.create(user)
	cart = Cart.new()
	new_user.cart = cart
	new_user.save
end

for user in User.all 
	cart = Cart.new()
	cart.user = user
	user.save
end


yam = Ingredient.create(name: 'Yam, 1 lb', image_url: 'http://www.madame-web.com/wp-content/uploads/2013/12/sweet-potatoes-860_0.jpg')
veg_broth = Ingredient.create(name: 'Vegetable Broth, 1 Qt.', image_url: 'https://images-na.ssl-images-amazon.com/images/I/511IMCLXvXL.jpg')
carrot = Ingredient.create(name: 'Carrots, 1 lb', image_url: 'http://www.seedsavers.org/site/img/SEO%20Images/0357-danvers-carrot-organic.jpg')
beef_broth = Ingredient.create(name: 'Beef Broth, 1 Qt.', image_url: 'https://images.jet.com/md5/c914d78eb601a73e7b925f6f8b405838.500')
chicken_breast = Ingredient.create(name: 'Chicken Breast, 1 lb', image_url: 'https://ll-us-i5.wal.co/asr/af8a9806-329d-4a60-92ca-bbbf3026de27_1.1033e84849806738126805046ed9d1b5.jpeg-6364e4d7caaca0d209bfcfe7c6b5ce1d8a73e551-optim-500x500.jpg')

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

Recipe.create(name: 'Sweet Potato Fries', image_url: 'https://s-media-cache-ak0.pinimg.com/originals/56/54/e5/5654e50ea84c409f0cf386d67f14e17b.jpg').ingredients << yam
Recipe.create(name: 'Yam Ratatooille', image_url: 'http://ohthatstasty.com/wp-content/uploads/2014/11/roasted-sweet-potatoes-by-sk-550x420.jpg').ingredients << yam
Recipe.create(name: 'Yam Tea', image_url: 'https://c1.staticflickr.com/1/738/23545440651_7c6def86cd.jpg').ingredients << yam
Recipe.create(name: 'Yam Fritters', image_url: 'http://d1ujpofy5vmb70.cloudfront.net/wp-content/uploads/2013/04/SavoryPancakes_Article.jpg').ingredients << yam
Recipe.create(name: 'Yam Chips', image_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ9dywO7hZxuqql6o5P0ruGT8Foo5iz9qkbN8rnazkgOAfLuTyN').ingredients << yam
Recipe.create(name: 'Sweet Potato Pancakes', image_url: 'http://sweetpeaskitchen.com/wp-content/uploads/2010/08/dsc_1195.jpg').ingredients << yam
Recipe.create(name: 'Raw Sliced Yams', image_url: 'http://media.trusper.net/u/a89bffce-0237-4cbf-b38c-1d94084f1e57.jpg').ingredients << yam
out = []
for ingredient in Ingredient.all 
	out << ingredient.name
end
p "created ingredients:"
print out
out = []
for recipe in Recipe.all 
	out << recipe.name 
end
p "created recipes:"
print out
p "Users Created:"
for user in User.all
	p user.username
end