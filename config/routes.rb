Owp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  match 'logout' => 'sessions#destroy'
  match 'login' => 'sessions#new'
  match 'restore-password' => 'sessions#restore_password', :as => 'restore_password'
  match 'reset-password' => 'sessions#reset_password', :as => 'reset_password'

  resource :session

  namespace :admin do |admin|
    %w{
      hardware_servers
      virtual_servers
      server_templates
      os_templates
      event_log
      ip_addresses
      ip_pools
    }.each do |controller|
      match "/#{controller.sub('_', '-')}/:action" => "#{controller.sub('_', '-')}"
    end
  end

  match ':controller/:action'

  root :to => 'sessions#new'
#  map.connect '*anything', :controller => 'sessions', :action => 'new'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

