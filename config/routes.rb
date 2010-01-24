ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'gallery'
  map.resources :users
  map.resources :videos, :except => [:show]
  map.resources :user_sessions, :only => [:new, :create, :destroy]

  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
  map.login 'login', :controller => 'user_sessions', :action => 'new'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
