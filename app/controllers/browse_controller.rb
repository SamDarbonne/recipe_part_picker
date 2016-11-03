class BrowseController < ApplicationController
  def index

  	
  	@recipes = []
  	current_arr = []
  	count = 0
  	for el in Recipe.all 
  		current_arr << el
  		count += 1
  		if count == 3
  			@recipes << current_arr
  			current_arr = []
  			count = 0
  		end
  	end
  	@recipes << current_arr


  	@ingredients = []
  	cur = []
  	count = 0
  	for el in Ingredient.all
  		cur << el
  		count += 1
  		if count == 3
  			@ingredients << cur
  			cur = []
  			count = 0
  		end
  	end
  	@ingredients << cur


  	@chefs = User.all.select do |user|
  		user.chef == true
  	end
  end
end
