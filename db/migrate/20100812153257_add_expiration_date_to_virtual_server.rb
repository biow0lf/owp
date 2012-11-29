class AddExpirationDateToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :expiration_date, :date
  end

  def down
    remove_column :virtual_servers, :expiration_date
  end
end
