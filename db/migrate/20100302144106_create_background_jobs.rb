class CreateBackgroundJobs < ActiveRecord::Migration
  def up
    create_table :background_jobs do |t|
      t.column :description, :string
      t.column :params, :string
      t.column :status, :integer
    end
  end

  def down
    drop_table :background_jobs
  end
end
