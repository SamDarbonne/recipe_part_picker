class AddChefToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :chef, :boolean
  end
end
