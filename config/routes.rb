Movies::Application.routes.draw do

  resources :users

  resources :roles

  root 'movies#index'

  resources :reviews
  resources :actors
  resources :movies
  resources :directors

end
