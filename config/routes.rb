Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    post "/sessions" => "sessions#create"
    
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    put "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/songs" => "songs#index"
    post "/songs" => "songs#create"
    get "/songs/:id" => "songs#show"
    put "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"
  end
end
