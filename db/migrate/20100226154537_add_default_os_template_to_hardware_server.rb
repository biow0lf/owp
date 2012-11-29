class AddDefaultOsTemplateToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :default_os_template, :string
  end

  def down
    remove_column :hardware_servers, :default_os_template
  end
end
