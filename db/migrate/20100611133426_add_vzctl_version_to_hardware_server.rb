class AddVzctlVersionToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :vzctl_version, :string
  end

  def down
    remove_column :hardware_servers, :vzctl_version
  end
end
