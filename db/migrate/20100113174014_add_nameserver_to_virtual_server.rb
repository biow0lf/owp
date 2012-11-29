class AddNameserverToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :nameserver, :string
  end

  def down
    remove_column :virtual_servers, :nameserver
  end
end
