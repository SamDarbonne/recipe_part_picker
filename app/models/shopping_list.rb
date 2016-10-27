class ShoppingList < ApplicationRecord
	belongs_to :ingredient
	belongs_to :cart
end
