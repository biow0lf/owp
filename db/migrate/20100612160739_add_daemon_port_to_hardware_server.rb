class AddDaemonPortToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :daemon_port, :integer, :default => 7767
  end

  def down
    remove_column :hardware_servers, :daemon_port
  end
end
