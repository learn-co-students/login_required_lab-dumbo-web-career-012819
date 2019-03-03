Rails.application.routes.draw do

  root 'application#hello'
  post '/application/hello', to: 'application#hello'

  get '/secret', to: 'secrets#show'

  post 'sessions/destroy', to: 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]
  # root 'sessions/new'
  # post 'sessions/create', to: 'sessions#create'
end
