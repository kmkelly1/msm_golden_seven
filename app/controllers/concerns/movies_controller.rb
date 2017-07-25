class MoviesController < ApplicationController
  def index
    # Read all Movies
    render("/layouts/movies/index.html.erb")
  end
  
  def show
    # Read one movie
    render("layouts/movies/show_details.html.erb")
  end
  
  def destroy
    # Deletes the row of a movie
    render("layouts/movies/destroy.html.erb")
  end
  
  def create_form
    # create form to add movie
    render("layouts/movies/create_form.html.erb")
  end
  
  def create_row
    # create row in table for new movie
    render("layouts/movies/show_details.html.erb")
  end
  
  def update_form
    # update form for existing movie
    render("layouts/movies/update_form.html.erb")
  end
  
  def update_row
    # update row for existing movie
    render("layouts/movies/show_details.html.erb")
  end
end
