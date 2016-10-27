class IngredientsCart < ApplicationRecord
	belongs_to :ingredient
	belongs_to :cart
end
