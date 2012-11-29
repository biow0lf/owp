class AddBackupsDirToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :backups_dir, :string
  end

  def down
    remove_column :hardware_servers, :backups_dir
  end
end
