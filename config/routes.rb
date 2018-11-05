Rails.application.routes.draw do
  get 'favorites/index'
  post 'favorites', to: 'favorites#create'
  delete 'favorites', to: 'favorites#destroy'

  get 'topics/new'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get 'login',   to: 'sessions#new'
  post 'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'

  get 'profile/:email', to: 'users#show', as: :profile
  resources :users
  # resources :topics
  

  # get 'favorites/index'
  # post 'favorites/create'

  get '/favorites', to: 'favorites#index'
  post '/favorites', to: 'favorites#create'


  resources :topics do
  resources :comments
  end





end
