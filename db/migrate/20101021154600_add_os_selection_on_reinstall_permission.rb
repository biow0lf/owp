class AddOsSelectionOnReinstallPermission < ActiveRecord::Migration
  def self.up
    superadmin_role = Role.find_by_name('superadmin')
    if superadmin_role
      Permission.create(:name => 'select_os_on_reinstall')
      superadmin_role.permissions << Permission.find_by_name('select_os_on_reinstall')
    end

    ve_admin_role = Role.find_by_name('ve_admin')
    if ve_admin_role
      Permission.create(:name => 'select_os_on_reinstall')
      ve_admin_role.permissions << Permission.find_by_name('select_os_on_reinstall')
    end
  end

  def self.down
    if Permission.find_by_name('select_os_on_reinstall')
      Permission.find_by_name('select_os_on_reinstall').delete
    end
  end
end
