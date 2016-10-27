class CartsController < ApplicationController
	def add

	end

	def show
		ingredients = current_user.cart.ingredients
		cart_list = {}
		for item in ingredients
			if cart_list[item.name] == nil
				cart_list[item.name] = 1
			else
				cart_list[item.name] += 1
			end
		end
		@shopping_list = cart_list
	end
end
