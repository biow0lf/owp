class AddStartOnBootToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :start_on_boot, :boolean, :default => true
  end

  def down
    remove_column :virtual_servers, :start_on_boot
  end
end
