Rails.application.routes.draw do

  root 'observatory#index'

  post 'register-event' => 'events#register_event'

end
