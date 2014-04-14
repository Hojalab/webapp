Webapp::Application.routes.draw do
  root :to => "home#index"
  
  devise_for :users, :controllers => {:registrations => "registrations", :passwords => "passwords"  }
  
  resources :users
  resources :internal
  
  post '/users/lock/:id' => 'users#lock'
  post '/users/unlock/:id' => 'users#unlock'
end