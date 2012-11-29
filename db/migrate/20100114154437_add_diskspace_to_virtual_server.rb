class AddDiskspaceToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :diskspace, :integer, :default => 1024
  end

  def down
    remove_column :virtual_servers, :diskspace
  end
end
