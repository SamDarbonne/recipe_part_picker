class CartsController < ApplicationController
	def add

	end

	def show
		ingredients = current_user.cart.ingredients
		@shopping_list = ingredients.uniq
	end
end
