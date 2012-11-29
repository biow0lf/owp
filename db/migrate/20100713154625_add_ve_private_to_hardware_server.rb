class AddVePrivateToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :ve_private, :string
  end

  def down
    remove_column :hardware_servers, :ve_private
  end
end
