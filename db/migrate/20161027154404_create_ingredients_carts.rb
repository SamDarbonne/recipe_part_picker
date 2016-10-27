class CreateIngredientsCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients_carts do |t|

      t.timestamps
    end
  end
end
