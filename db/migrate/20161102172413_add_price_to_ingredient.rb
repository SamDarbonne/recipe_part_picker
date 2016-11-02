class AddPriceToIngredient < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :price, :integer
  end
end
