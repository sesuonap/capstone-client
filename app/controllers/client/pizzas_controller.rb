class Client::PizzasController < ApplicationController

  def index 
    response = Unirest.get("http://localhost:3000/api/pizzas")

    @pizzas = response.body
    render 'index.html.erb'
  end


end
