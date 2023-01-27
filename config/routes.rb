Rails.application.routes.draw do
  
  resources :categories
  resources :cart_items, only: [:create, :index, :show, :destroy]
  resources :items, except: [:new, :edit]
  resources :carts, only: [:show, :create]
  resources :users, only: [:update, :create]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post "/login", to: "sessions#create"
  

  get '/sessions', to: "sessions#index"


  get "/persist", to: "users#login_check"

  # delete "/delete", to: 'cart_items#deleteItem'

 

    #"/authorized"
    # get "/authorized", to: "users#show"

    # post "/signup", to: "users#create"  


end
