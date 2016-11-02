class BrowseController < ApplicationController
  def index
  	# there's not enough chaos in the world, let's shuffle our ingredients and recipes!
  	# this keeps things 'fresh'
  	@recipes = Recipe.all
  	@recipes = @recipes.shuffle
  	@ingredients = Ingredient.all
  	@ingredients = @ingredients.shuffle
  	# chefs are a proud bunch and we will get complaints if we shuffle their order. 
  	@chefs = User.all.select do |user|
  		user.chef == true
  	end
  end
end
