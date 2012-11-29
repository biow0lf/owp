class RemoveOsTemplateIdFromVirtualServer < ActiveRecord::Migration
  def up
    remove_column :virtual_servers, :os_template_id
  end

  def down
    add_column :virtual_servers, :os_template_id, :integer
  end
end
