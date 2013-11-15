Movies::Application.routes.draw do

  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  post "/sessions" => 'sessions#create'

  resources :users
  resources :roles

  root 'movies#index'

  resources :reviews
  resources :actors
  resources :movies
  resources :directors

end
