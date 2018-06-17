Rails.application.routes.draw do
  get '/' => 'client/restaurants#choices'
  namespace :client do 
    get '/restaurants' => 'restaurants#index'
    get '/restaurants/:id' => 'restaurants#show'
  end 
end
