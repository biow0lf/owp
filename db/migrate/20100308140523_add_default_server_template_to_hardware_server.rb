class AddDefaultServerTemplateToHardwareServer < ActiveRecord::Migration
  def up
    add_column :hardware_servers, :default_server_template, :string
  end

  def down
    remove_column :hardware_servers, :default_server_template
  end
end
