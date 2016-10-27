class AddKeysToIngredientsCarts < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients_carts, :cart_id, :integer
    add_column :ingredients_carts, :ingredient_id, :integer
  end
end
