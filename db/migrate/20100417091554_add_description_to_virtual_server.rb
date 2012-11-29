class AddDescriptionToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :description, :string
  end

  def down
    remove_column :virtual_servers, :description
  end
end
