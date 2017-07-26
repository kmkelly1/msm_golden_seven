class MoviesController < ApplicationController
  def index
    @movies=Movie.all
    
  render("/layouts/movies/index.html.erb")
  end
  
  def show
    # Read one movie
    
    @movie = Movie.find(params["id"])
    render("layouts/movies/show_details.html.erb")
  end
  
  def destroy
    # Deletes the row of a movie
    
    movie = Movie.find(params[:id])

    movie.destroy
    
    render("layouts/movies/destroy.html.erb")
  end
  
  def create_form
    # create form to add movie
    render("layouts/movies/create_form.html.erb")
  end
  
  def create_row
    # create row in table for new movie
    @movie = Movie.new
    
    @movie.name = params[:name]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
   

    @movie.save
    
    render("layouts/movies/show_details.html.erb")
  end
  
  def update_form
    # update form for existing movie
    @movie = Movie.find(params[:id])
    
    render("layouts/movies/update_form.html.erb")
  end
  
  def update_row
    # update row for existing movie
    
    @movie = Movie.find(params[:id])
    
    @movie.name = params[:name]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    
    
    render("layouts/movies/show_details.html.erb")
  end
end
