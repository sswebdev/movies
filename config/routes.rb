Movies::Application.routes.draw do

  resources :theaters

  # get "movies/:movie_id/actors" => 'actors#index'
  # get "/movies/:movie_id/actors/:id" => 'actors#show'
  # post "/movies/:movie_id/actors"

  get '/auth/:provider/callback', to: 'sessions#create'

  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  post "/sessions" => 'sessions#create'

  resources :users
  resources :roles

  root 'movies#index'

  resources :reviews
  resources :actors
  resources :movies do
    resources :actors
  end

  resources :directors

end








