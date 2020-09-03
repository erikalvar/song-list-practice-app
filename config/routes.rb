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
  end
end
