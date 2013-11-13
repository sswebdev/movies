Movies::Application.routes.draw do

  root 'movies#index'

  resources :reviews
  resources :actors
  resources :movies
  resources :directors

end
