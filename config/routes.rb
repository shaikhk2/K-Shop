Rails.application.routes.draw do
  
  resources :categories
  resources :cart_items
  resources :items, except: [:new, :edit]
  resources :carts, only: [:show]
  resources :users, only: [:index, :show, :create]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post "/login", to: "sessions#create"
    #"/authorized"
    # get "/authorized", to: "users#show"

    # post "/signup", to: "users#create"  


end
