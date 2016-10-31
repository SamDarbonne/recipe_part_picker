class CreateRecipeListRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_list_recipes do |t|

      t.timestamps
    end
  end
end
