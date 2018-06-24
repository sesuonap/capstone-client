Rails.application.routes.draw do
  get '/' => 'client/restaurants#choices'
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  
  namespace :client do 
    get '/restaurants' => 'restaurants#index'
    get '/restaurants/:id' => 'restaurants#show'
    get '/restaurants/message' => 'restaurants#message'
  end 
end
