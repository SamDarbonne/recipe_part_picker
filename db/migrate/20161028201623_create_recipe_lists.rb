class CreateRecipeLists < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_lists do |t|

      t.timestamps
    end
  end
end
