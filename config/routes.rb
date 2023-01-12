Rails.application.routes.draw do
  
  resources :categories
  resources :cart_items
  resources :items
  resources :carts
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

    #"/authorized"
    get "/authorized", to: "users#show"

    #"/login" route to create a new user session
    #post to use body key to send information


    # post "/login", to: "sessions#create"
  
    #"/logout" route is destroying the session


    # delete "/logout", to: "sessions#destroy"
  
    #"/signup" route to create a new user session
    post "/signup", to: "users#create"  
end
