Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'

  resources :products

  resource :cart, only: [:show]

  resources :cart_items, only: [:create, :update, :destroy]
  get 'cart_items/create'
  get 'cart_items/update'
  get 'cart_items/destroy'
  get 'carts/show'

  root 'pages#about'
  get '/about', to: 'pages#about'

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
