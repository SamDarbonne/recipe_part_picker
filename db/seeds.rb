

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
		username: 'oldguyºª•',
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


yam = Ingredient.create(name: 'Yam, 1 lb', price: 140, image_url: 'http://www.madame-web.com/wp-content/uploads/2013/12/sweet-potatoes-860_0.jpg')
veg_broth = Ingredient.create(name: 'Vegetable Broth, 1 Qt.', price: 350,image_url: 'https://images-na.ssl-images-amazon.com/images/I/511IMCLXvXL.jpg')
carrot = Ingredient.create(name: 'Carrots, 1 lb', price: 99, image_url: 'http://www.seedsavers.org/site/img/SEO%20Images/0357-danvers-carrot-organic.jpg')
beef_broth = Ingredient.create(name: 'Beef Broth, 1 Qt.', price: 450, image_url: 'https://images.jet.com/md5/c914d78eb601a73e7b925f6f8b405838.500')
chicken_breast = Ingredient.create(name: 'Chicken Breast, 1 lb', price: 499, image_url: 'https://ll-us-i5.wal.co/asr/af8a9806-329d-4a60-92ca-bbbf3026de27_1.1033e84849806738126805046ed9d1b5.jpeg-6364e4d7caaca0d209bfcfe7c6b5ce1d8a73e551-optim-500x500.jpg')

r1 = Recipe.new(name: 'Yam Soup', instructions: 'chop yams into mouth sized pieces. Place yams in a pot to boil. Cover yams in broth and let boil', image_url: 'http://simplecookingstudio.com/Sweet%20Yam%20Soup.jpg')
r1.ingredients << [yam, carrot, veg_broth]

r2 = Recipe.new(name: 'Chicken Soup', instructions: "Put the chicken, carrots, celery and onion in a large soup pot and cover with cold water. Heat and simmer, uncovered, until the chicken meat falls off of the bones (skim off foam every so often).
Take everything out of the pot. Strain the broth. Pick the meat off of the bones and chop the carrots, celery and onion. Season the broth with salt, pepper and chicken bouillon to taste, if desired. Return the chicken, carrots, celery and onion to the pot, stir together, and serve.", image_url: 'http://img1.cookinglight.timeinc.net/sites/default/files/styles/500xvariable/public/image/2012/01/1201p116-good-old-fashioned-chicken-soup-x.jpg?itok=pFMU7EvJ')
r2.ingredients << [chicken_breast, beef_broth, veg_broth, yam, carrot]

r3 = Recipe.new(name: 'Plate of Carrots', instructions: "just cut up some carrots and put them on a plate.", image_url: 'https://cristinajmcdaniel.files.wordpress.com/2013/03/carrot-diet-plate.jpg')
r3.ingredients << [carrot]

r4 = Recipe.new(name: 'Mashed Yams', instructions: "cut yams into evenly sized pieces and boil for 20 minutes. Alternatively, wrap in foil and bake for an hour. Once yams are cooked, mash them with butter, salt, and pepper", image_url: 'http://frugalanticsrecipes.com/wp-content/uploads/2013/11/Mashed-Cheddar-Sweet-Potatoes.jpg')
r4.ingredients << [yam]

r5 = Recipe.new(name: 'Loaded Mashed Yams', instructions: "Wrap yams in foil and bake for an hour at 350F. once cooked, split down the center and stuff with toppings of your choice. Typical toppings include, but are not limited to, butter, chives, sour cream, bacon, and green spring onions", image_url: 'http://2.bp.blogspot.com/-VQyCqDwvqPw/TrGzQSRDjpI/AAAAAAAATBs/mdab1Ch8nIo/s1600/1-twice-baked-sweet-potato-feta-500x500-kalynskitchen.jpg')
r5.ingredients << [yam]

r6 = Recipe.new(name: 'Sweet Potato Fries', instructions: "Cut yams into french fry shaped pieces and bake at 425 for 35 minutes. douse with salt and pepper and serve. ", image_url: 'https://s-media-cache-ak0.pinimg.com/originals/56/54/e5/5654e50ea84c409f0cf386d67f14e17b.jpg')
r6.ingredients << yam
r7 = Recipe.new(name: 'Yam Ratatooille', instructions: "using a mandolin, very carefully slice all your yams into small slices, then arrange in a baking skillet and bake for 35 minutes at 350F", image_url: 'http://ohthatstasty.com/wp-content/uploads/2014/11/roasted-sweet-potatoes-by-sk-550x420.jpg')
r7.ingredients << yam
r8 = Recipe.new(name: 'Yam Tea', instructions: "just boil some yams in water and then drink the water. This recipe sucks and Yam Tea sucks. Not recommended.", image_url: 'https://c1.staticflickr.com/1/738/23545440651_7c6def86cd.jpg')
r8.ingredients << yam
r9 = Recipe.new(name: 'Yam Fritters', instructions: "SWEET POTATO (YAM) FRITTER RECIPE
Published by Joel MacCharles 3 Comments

This recipe happened by accident.  I was more than halfway through the preparation of sweet potato gnocchi when I realized we were out of flour.  What’s a boy to do? 

The answer, apparently, is to change plans.  And this was an acceptable change:




The end result?  A crunchy exterior that gives way to a sweet and savory core.  The picture above is the final results (post-cooking).

The inspiration came (loosely) from our lobster arancini (rice ball) recipe.  We took the natural sweetness of yams and paired them with the savoury-umami hits of cheese and oregano, added a bit of heat and some acidity of apple cider vinegar and we had a pretty awesome way to present mashed yams.

These are a little delicate to work with – after all, you are preparing a ball out of mashed sweet potato.  As long as you take your time you’ll find that they will stay together rather easily until frying.  Frying will solidify the exterior and make them much easier to manipulate.

Make sure you know safety precautions of deep-frying and have a deep pot with a cover for the task.  Also make sure the yams are thoroughly dried so you don’t have too much moisture which can lead to boil overs.  We put enough oil to fry about half the ball and ‘flip’ the balls half way through the process.  Don’t overcrowd the pan (they’ll steam and not fry); you can keep ‘extras’ worm in a 350 degree oven while others are cooking.

Although we don’t deep fry a lot of food, I have learned that the secret of successfully beading things lies in keeping at least one ‘dry’ hand.  If you’re using eggs to coat the exterior of something (like this recipe will show), only get one hand wet in order to get the perfect crust. 

Here’s how I do it:

My left hand (my ‘weaker’ one) is my wet hand.  My right hand is my dry one.
Make sure you lay out separate bowls and plates for each of the 3 ingredients (flour, eggs, cornmeal)
I make all of the balls before battering them.  I batter them as close to frying as possible.
My batter includes 3 stages as follows:
A dry dredge in flour.
A wet dip in egg.
A dry coating of cornmeal.
The fritter spends most of it’s time in my left hand, even in the dry stages.  Here’s how:
Gently pick up the ball with your left hand.  Hold it over the flour bowl.  Use your right hand to pick up flour and drop the flour onto the ball while gently rolling it around your hand to ensure it gets equal coverage.  Repeat until it’s well floured.
Dip the ball into the egg with your left hand.  You may need to let it our of your hand in order to scoop more egg onto it.  Don’t worry about 100% coverage but you want to make sure you have 95%+ covered.  Loosely jostle in your hand to continue the coverage.
Hold the ball over the bowl/ plate with cornmeal in your left hand.  Use your right hand to shower it with cornmeal like you did in step 1.  You will experience a paradox: because your hand has egg on it, you will struggle to get the completely dry coating you desire as it picks up more egg.  Do the best you can until you can’t do any better (i.e. it’s as dry as possible) and delicately place on the plate/ bowl of cornmeal.  Use your dry hand to shower more cornmeal before gently rolling it a final time with your dry hand.  It will now be 100% covered and dry.", image_url: 'http://d1ujpofy5vmb70.cloudfront.net/wp-content/uploads/2013/04/SavoryPancakes_Article.jpg')
r9.ingredients << yam
r10 = Recipe.new(name: 'Yam Chips', instructions: 'slice them and fry them. duh.', image_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ9dywO7hZxuqql6o5P0ruGT8Foo5iz9qkbN8rnazkgOAfLuTyN')
r10.ingredients << yam
r11 = Recipe.new(name: 'Sweet Potato Pancakes', image_url: 'http://sweetpeaskitchen.com/wp-content/uploads/2010/08/dsc_1195.jpg')
r11.ingredients << yam
r12 = Recipe.new(name: 'Raw Sliced Yams', image_url: 'http://media.trusper.net/u/a89bffce-0237-4cbf-b38c-1d94084f1e57.jpg')
r12.ingredients << yam

User.first.recipes << [r1, r4, r5, r6]
User.first.save
User.second.recipes << [r2, r7, r8, r9]
User.second.save
User.third.recipes << [r3, r10, r11, r12]
User.third.save

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