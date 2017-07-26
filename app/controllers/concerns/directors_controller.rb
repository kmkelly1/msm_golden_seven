class DirectorsController < ApplicationController
  def index
    # Read all Directors
    @directors=Director.all
    
    render("/layouts/directors/index.html.erb")
  end
  
  def show
    # Read one director
    @director=Director.find(params[:id])
    render("layouts/directors/show_details.html.erb")
  end
  
  def destroy
    # Deletes the row of a director
    
    @director = Director.find(params[:id])
    @director.destroy
    
    render("layouts/directors/destroy.html.erb")
  end
  
  def create_form
    # create form to add director
    
    
    render("layouts/directors/create_form.html.erb")
  end
  
  def create_row
    # create row in table for new director
    
    @director = Director.new

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save
    
    render("layouts/directors/show_details.html.erb")
  end
  
  def update_form
    # update form for existing director
    
    @director = Director.find(params[:id])
    
    render("layouts/directors/update_form.html.erb")
  end
  
  def update_row
    # update row for existing director
    
    @director = Director.find(params[:id])
    
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save
    
    render("layouts/directors/show_details.html.erb")
  end
end
