class AddTemplatesDirToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :templates_dir, :string
  end

  def down
    remove_column :hardware_servers, :templates_dir
  end
end
