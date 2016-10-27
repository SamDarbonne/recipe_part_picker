class Ingredient < ApplicationRecord
	has_many :ingredient_lists
	has_many :recipes, through: :ingredient_lists
	has_many :ingredients_carts
	has_many :carts, through: :ingredients_carts
end
