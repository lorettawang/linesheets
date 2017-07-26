Rails.application.routes.draw do

  root 'pages#about'
  get '/about', to: 'pages#about'
  resources :contacts
  resources :products
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
