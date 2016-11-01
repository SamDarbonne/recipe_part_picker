class AddParameterizedToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :param_name, :string
  end
end
