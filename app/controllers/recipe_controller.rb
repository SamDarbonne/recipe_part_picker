class RecipeController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  def show
  	@recipe = (Recipe.all.select {|recipe| recipe.name.parameterize(separator: '-') == params[:recipe_name]}).first
  end
end
