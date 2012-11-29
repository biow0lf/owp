class AddOrigServerTemplateToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :orig_server_template, :string
  end

  def down
    remove_column :virtual_servers, :orig_server_template
  end
end
