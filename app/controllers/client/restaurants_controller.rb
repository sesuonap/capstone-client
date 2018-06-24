class Client::RestaurantsController < ApplicationController

  def index 
    response = Unirest.get("http://localhost:3000/api/restaurants")

    @restaurants = response.body
    render 'index.html.erb'
  end

  def choices
    response = Unirest.get("http://localhost:3000/api/restaurants?random=true")

    @restaurants = response.body
    render 'choices.html.erb'
  end

  def show
    restaurant_id = params[:id]
    response = Unirest.get("http://localhost:3000/api/restaurants/#{restaurant_id}")
    @restaurant = response.body
    render 'show.html.erb'
  end

  def message
    
  end 

 
end
