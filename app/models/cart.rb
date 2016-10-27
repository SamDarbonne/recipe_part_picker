class Cart < ApplicationRecord
	belongs_to :user	
	has_many :ingredients_carts
	has_many :ingredients, through: :ingredients_carts
end
