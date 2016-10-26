class BrowseController < ApplicationController
  def index
  	@recipes = Recipe.all
  	@ingredients = Ingredient.all
  	@chefs = User.all.select do |user|
  		user.chef == true
  	end
  end
end
