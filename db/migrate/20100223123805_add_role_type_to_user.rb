class AddRoleTypeToUser < ActiveRecord::Migration
  def up
    add_column :users, :role_type, :integer, :default => 1
  end

  def down
    remove_column :users, :role_type
  end
end
