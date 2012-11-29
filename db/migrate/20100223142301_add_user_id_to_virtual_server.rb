class AddUserIdToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :user_id, :integer, :default => 0
  end

  def down
    remove_column :virtual_servers, :user_id
  end
end
