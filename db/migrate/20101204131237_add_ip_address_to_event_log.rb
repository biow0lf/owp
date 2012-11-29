class AddIpAddressToEventLog < ActiveRecord::Migration
  def up
    add_column :event_logs, :ip_address, :string
  end

  def down
    remove_column :event_logs, :ip_address
  end
end
