class CartsController < ApplicationController
	def add

	end

	def show
		@shopping_list = current_user.cart.ingredients
	end
end
