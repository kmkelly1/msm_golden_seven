Rails.application.routes.draw do
  # DIRECTORS
  
  # Read index of directors
  get("/directors", :controller =>'directors', :action => 'index')
  # Read just one director
  get("/directors/:id", :controller =>'directors', :action => 'show')
  # Create form for director
  get("/directors/new_form", :controller => 'directors', :action => 'create_form')
  # Create row for director
  get("/create_director", :controller => 'directors', :action => 'create_row')
  # Update form existing director
  get("/directors/:id/edit_form", :controller => 'directors', :action => 'update_form')
  # Update row existing director
  get("/update_director/:id", :controller => 'directors', :action => 'update_row')
  # Destroy director
  get("/delete_director/:id", :controller => 'directors', :action => 'destroy')
  
  # MOVIES
  
  #Read index of all movies
  get("/movies", :controller =>'movies', :action => 'index')
  #Read index of one movie
  get("/movies/:id", :controller =>'movies', :action => 'show')
  #Create form for new movie
  get("/movies/new_form", :controller => 'movies', :action => 'create_form')
  #Create row for new movie
  get("/create_movie", :controller => 'movies', :action => 'create_row')
  #Update form for existing movie
  get("/movies/:id/edit_form", :controller => 'movies', :action => 'update_form')
  #Update row for existing movie
  get("/update_movie/:id", :controller => 'movies', :action => 'update_row')
  #Destroy Movie
  get("/delete_movie/:id", :controller => 'movies', :action => 'destroy')
  
   # ACTORS
  
  #Read index of all actors
  get("/actors", :controller =>'actors', :action => 'index')
  #Read index of one actor
  get("/actors/:id", :controller =>'actors', :action => 'show')
  #Create form for new actor
  get("/actors/new_form", :controller => 'actors', :action => 'create_form')
  #Create row for new actor
  get("/create_actor", :controller => 'actors', :action => 'create_row')
  #Update form for existing actor
  get("/actors/:id/edit_form", :controller => 'actors', :action => 'update_form')
  #Update row for exisiting actor
  get("/update_actor/:id", :controller => 'actors', :action => 'update_row')
  #Destroy actor
  get("/delete_actor/:id", :controller => 'actors', :action => 'destroy')
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
