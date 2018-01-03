Rails.application.routes.draw do

  root 'observatory#index'

  get 'current_state' => 'observatory#current_state'

  post 'events/:cons_name/:comp_name/:state' => 'events#register_event'
  post 'events/:cons_name/ping' => 'events#ping_constellation'

end
