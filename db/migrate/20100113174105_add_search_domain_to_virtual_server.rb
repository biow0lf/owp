class AddSearchDomainToVirtualServer < ActiveRecord::Migration
  def up
    add_column :virtual_servers, :search_domain, :string
  end

  def down
    remove_column :virtual_servers, :search_domain
  end
end
