Rails.application.routes.draw do
  # API routes
  namespace :api do
    # Devise routes for user authentication
    devise_for :users, controllers: {
      sessions: 'api/users/sessions',
      registrations: 'api/users/registrations'
    }

    # User profile
    get 'profile', to: 'users#show'
    patch 'profile', to: 'users#update'

    # Products and categories
    resources :categories, only: [:index, :show]
    resources :products, only: [:index, :show] do
      resources :reviews, only: [:index, :create]
    end

    # Cart
    resource :cart, only: [:show, :update] do
      post 'add_item', on: :member
      delete 'remove_item', on: :member
    end

    # Orders
    resources :orders, only: [:index, :show, :create] do
      resources :payments, only: [:create]
    end

    # Shipping addresses
    resources :shipping_addresses, only: [:index, :create, :update, :destroy]

    # Wishlist
    resource :wishlist, only: [:show] do
      post 'add_item', on: :member
      delete 'remove_item', on: :member
    end

    # Search
    get 'search', to: 'search#index'
  end
end
