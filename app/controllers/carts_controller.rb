class CartsController < ApplicationController
	def add

	end

	def remove
		current_user.cart.ingredients.delete(Ingredient.find_by_id(params[:ingredient_id]))
		redirect_to '/cart/show'
	end

	def show
		@shopping_list = []
		ingredients = current_user.cart.ingredients
		cart_list = {}
		for item in ingredients
			if cart_list[item.id] == nil
				cart_list[item.id] = 1
			else
				cart_list[item.id] += 1
			end
		end
		cart_list.each {|a| @shopping_list << [Ingredient.find_by_id(a[0]), a[1]]}
	end
end
