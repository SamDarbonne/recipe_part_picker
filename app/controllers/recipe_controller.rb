class RecipeController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  def show
  	@recipe = recipe
  end

  def add_to_cart
  	for ingredient in recipe.ingredients
  		current_user.cart.ingredients << ingredient
  	end
  	redirect_to '/cart/show'
  end

  private

  def recipe
  	(Recipe.all.select {|recipe| recipe.name.parameterize(separator: '-') == params[:recipe_name]}).first
  end
end
