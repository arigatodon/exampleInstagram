class AddParameterToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :username, :string
    add_column :users, :role, :integer
    add_column :users, :active, :boolean
  end
end
