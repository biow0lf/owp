class CreateBeanCounters < ActiveRecord::Migration
  def up
    create_table :bean_counters do |t|
      t.column :name, :string
      t.column :virtual_server_id, :integer
      t.column :held, :string
      t.column :maxheld, :string
      t.column :barrier, :string
      t.column :limit, :string
      t.column :failcnt, :string
      t.column :period_type, :integer
      t.column :created_at, :datetime
    end
  end

  def down
    drop_table :bean_counters
  end
end
