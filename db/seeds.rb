Role.create(:name => 'superadmin', :built_in => true, :limit_backups => -1)
Role.create(:name => 've_admin', :built_in => true, :limit_backups => 3)

Permission.create(:name => 'manage_hardware_servers')
Permission.create(:name => 'use_ve_console')
Permission.create(:name => 'backup_ve')
Permission.create(:name => 'reinstall_ve')
Permission.create(:name => 'handle_requests')
Permission.create(:name => 'create_requests')
Permission.create(:name => 'view_tasks')
Permission.create(:name => 'view_logs')
Permission.create(:name => 'manage_logs')
Permission.create(:name => 'manage_users')
Permission.create(:name => 'select_os_on_reinstall')

superadmin_role = Role.find_by_name('superadmin')
superadmin_role.permissions = Permission.all

ve_admin_role = Role.find_by_name('ve_admin')
%w( use_ve_console backup_ve reinstall_ve create_requests select_os_on_reinstall ).each do |perm_name|
  ve_admin_role.permissions << Permission.find_by_name(perm_name)
end

role = Role.find_by_name('superadmin')

user = User.new
user.login = 'admin'
user.password = 'admin'
user.password_confirmation = 'admin'
user.role_id = role.id
user.save(false)

