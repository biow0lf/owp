class AddEnabledToUser < ActiveRecord::Migration
  def up
    add_column :users, :enabled, :boolean, :default => true
  end

  def down
    remove_column :users, :enabled
  end
end
