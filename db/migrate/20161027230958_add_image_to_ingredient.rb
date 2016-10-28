class AddImageToIngredient < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :image_url, :string
  end
end
