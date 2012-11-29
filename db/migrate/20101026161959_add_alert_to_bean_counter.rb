class AddAlertToBeanCounter < ActiveRecord::Migration
  def up
    add_column :bean_counters, :alert, :boolean, :default => false
  end

  def down
    remove_column :beancounters, :alert
  end
end
