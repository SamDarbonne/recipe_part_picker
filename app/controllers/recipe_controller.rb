class RecipeController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  def show
  end
end
