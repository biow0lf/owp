class AddUseSslToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :use_ssl, :boolean, :default => false
  end

  def down
    remove_column :hardware_servers, :use_ssl
  end
end
