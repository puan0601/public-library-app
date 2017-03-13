Rails.application.routes.draw do
  root to: 'users#index'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users/', to: "users#create"
  get '/users/:id', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
end