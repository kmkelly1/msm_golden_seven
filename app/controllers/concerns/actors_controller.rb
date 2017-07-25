class ActorsController < ApplicationController
  def index
    # Read all actors
    render("/layouts/actors/index.html.erb")
  end
  
  def show
    # Read one actor
    render("layouts/actors/show_details.html.erb")
  end
  
  def destroy
    # Deletes the row of a actor
    render("layouts/actors/destroy.html.erb")
  end
  
  def create_form
    # create form to add actor
    render("layouts/actors/create_form.html.erb")
  end
  
  def create_row
    # create row in table for new actor
    render("layouts/actors/show_details.html.erb")
  end
  
  def update_form
    # update form for existing actor
    render("layouts/actors/update_form.html.erb")
  end
  
  def update_row
    # update row for existing actor
    render("layouts/actors/show_details.html.erb")
  end
end
