class RemoveRecipeIdFromIngredient < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :recipe_id, :string
  end
end
