Rails.application.routes.draw do
  resources :mains
  resources :users
  resources :menus
  resources :carts
  resources :order_items
  resources :menu_items
  resources :orders
  get "/home_page", to: "sessions#index"
  post "/add_to_cart", to: "carts#create", as: :create_cart
  get "/", to: "home#index"
  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "/signout", to: "sessions#destroy", as: :destroy_session
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
