class IngredientController < ApplicationController
  def index
  	@ingredients = Ingredient.all
  end

  def show
  	@ingredient = (Ingredient.all.select {|ingredient| ingredient.name.parameterize == params[:ingredient_name]}).first
  end
end
