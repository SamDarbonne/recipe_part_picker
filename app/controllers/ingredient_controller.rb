class IngredientController < ApplicationController


  def show

    @ingredient = ingredient
    @user = current_user
  end

  def add_to_cart


    current_user.cart.ingredients << ingredient
  	redirect_to '/cart/show'
  end

  private

  def ingredient
  	(Ingredient.all.select {|ingredient| ingredient.name.parameterize == params[:ingredient_name]}).first
  end
end
