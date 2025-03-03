Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [:index, :show]
      resources :wishlists, only: [:index, :create, :destroy]
      resources :order_items, only: [:create, :destroy]
      resources :orders, only: [:index]
      get "/cart", controller: "order_items", action: :cart
      post "/checkout", controller: "order_items", action: :checkout
    end
  end
end
