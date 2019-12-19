class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :adress, :string
    add_column :users, :phone, :string
    add_column :users, :age, :string
  end
end
