class AddRoleToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :integer unless column_exists?(:users, :role)
  end
end
