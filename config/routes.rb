Movies::Application.routes.draw do

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
