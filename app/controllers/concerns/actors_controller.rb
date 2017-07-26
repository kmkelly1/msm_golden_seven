class ActorsController < ApplicationController
  
  def index
    # Read all actors
    
    @actors = Actor.all
    
    render("/layouts/actors/index.html.erb")
  end
  
  def show
    # Read one actor
    
    @actor = Actor.find(params[:id])
    render("layouts/actors/show_details.html.erb")
  end
  
  def destroy
    # Deletes the row of a actor
    
    @actor = Actor.find(params[:id])

    @actor.destroy 
    
    render("layouts/actors/destroy.html.erb")
  end
  
  def create_form
    # create form to add actor
    
    render("layouts/actors/create_form.html.erb")
  end
  
  def create_row
    # create row in table for new actor
    
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save
    
    render("layouts/actors/show_details.html.erb")
  end
  
  def update_form
    # update form for existing actor
    
    @actor = Actor.find(params[:id])
    
    render("layouts/actors/update_form.html.erb")
  end
  
  def update_row
    # update row for existing actor
    
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save
    
    render("layouts/actors/show_details.html.erb")
  end
end
