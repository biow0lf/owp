class CreateEventLogs < ActiveRecord::Migration
  def up
    create_table :event_logs do |t|
      t.column :level, :integer
      t.column :message, :string
      t.column :params, :string
      t.column :created_at, :datetime
    end
  end

  def down
    drop_table :event_logs
  end
end
