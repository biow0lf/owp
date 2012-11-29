class AddContactNameToUser < ActiveRecord::Migration
  def up
    add_column :users, :contact_name, :string
  end

  def down
    remove_column :users, :contact_name
  end
end
