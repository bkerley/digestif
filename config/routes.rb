ActionController::Routing::Routes.draw do |map|
  map.root :controller=>'enjoyable', :action=>'diversion'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
