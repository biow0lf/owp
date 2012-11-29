class AddOrigOsTemplateToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :orig_os_template, :string
  end

  def down
    remove_column :virtual_servers, :orig_os_template
  end
end
