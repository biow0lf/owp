class AddMemoryToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :memory, :integer, :default => 256
  end

  def down
    remove_column :virtual_servers, :memory
  end
end
