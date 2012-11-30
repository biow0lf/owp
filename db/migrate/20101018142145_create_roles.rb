class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.boolean :built_in
    end
  end

  def self.down
    drop_table :roles
  end
end
