Movies::Application.routes.draw do

  # Routes for the Movie resource:
  # CREATE
  get '/movies/new', controller: 'movies', action: 'new', :as => 'new_movie'
  post '/movies', controller: 'movies', action: 'create'

  # READ
  get '/movies', controller: 'movies', action: 'index'
  get '/movies/:id', controller: 'movies', action: 'show', :as => 'movie'

  # UPDATE
  get '/movies/:id/edit', controller: 'movies', action: 'edit', :as => 'edit_movie'
  patch '/movies/:id', controller: 'movies', action: 'update'

  # DELETE
  delete '/movies/:id', controller: 'movies', action: 'destroy'
  #------------------------------

  root 'directors#index'

  # Routes for the Director resource:
  # CREATE
  get '/directors/new', controller: 'directors', action: 'new', :as => 'new_director'
  post '/directors', controller: 'directors', action: 'create'

  # READ
  get '/directors', controller: 'directors', action: 'index'
  get '/directors/:id', controller: 'directors', action: 'show', :as => 'director'

  # UPDATE
  get '/directors/:id/edit', controller: 'directors', action: 'edit', :as => 'edit_director'
  patch '/directors/:id', controller: 'directors', action: 'update'

  # DELETE
  delete '/directors/:id', controller: 'directors', action: 'destroy'
  #------------------------------
end
