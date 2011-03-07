ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => "users", :action => "index"
  map.logout 'logout', :controller => "user_sessions", :action => "destroy"
  map.login 'login', :controller => "user_sessions", :action => "new"
  map.register 'register', :controller => "users", :action => "new"
    
  map.resource :user_session, :only => [:new, :create, :destroy]
  map.resource :users, :only => [:new, :create]
  
  map.namespace :admin do |admin|
    admin.resources :roles
    admin.resources :users
    admin.resources :games
    admin.root :controller => :admin, :action => "index"
  end
  
  map.namespace :member do |member|
    member.resources :users
    member.resources :games
    member.root :controller => :member, :action => "index"
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
