class DefaultAdmin < ActiveRecord::Migration
  def up
    User.after_create.clear
    user = User.new
    user.login = 'admin'
    user.password = 'admin'
    user.password_confirmation = 'admin'
    user.save(false)
  end

  def down
    user = User.find_by_login('admin')
    user.destroy
  end
end
