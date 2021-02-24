Rails.application.routes.draw do

  # LOGIN and LOGOUT Through Crypto Trader

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  # Resources for Investments and Crypto

  resources :investments
  
  resources :cryptocoins, only: [:show, :index] do
      resources :investments, only: [:index, :new, :create]
  end

  # OMNIAUTH

  get '/auth/:provider/callback', to: 'sessions#omniauth'
  
end
