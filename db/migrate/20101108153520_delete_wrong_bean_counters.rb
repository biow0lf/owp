class DeleteWrongBeanCounters < ActiveRecord::Migration
  def up
    if 'SQLite3::Database' == ActiveRecord::Base.connection.instance_variable_get(:@connection).class.to_s
      BeanCounter.delete_all(["typeof(created_at) = ?", 'null'])
    end
  end

  def down
  end
end
