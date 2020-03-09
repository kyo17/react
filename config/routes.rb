Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
    put "like", to: "posts#like"
  end
  resources :users, only: :index
  resources :friend_requests

  post "/sign_up_validation", to: "users/omniauth_callbacks#sign_up_validation"
  get "/favorites", to: "posts#favorites", as: :favorites
  get "/profile/:id", to: "users#profile", as: :profile
  get "/profile/:id/friends", to: "friends#index", as: :friends
  delete "/friends/:id", to: "friends#destroy", as: :destroy_friend

  devise_for :users, controllers: {
    :omniauth_callbacks => "users/omniauth_callbacks",
    :registrations => "users/registrations"
  }

  authenticated :user do
    root 'posts#index'
  end

  unauthenticated :user do
    devise_scope :user do
      root to: "devise/sessions#new"
    end
  end
end
