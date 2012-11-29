class AddSizeToOsTemplate < ActiveRecord::Migration
  def up
    add_column :os_templates, :size, :integer
  end

  def down
    remove_column :os_templates, :size
  end
end
