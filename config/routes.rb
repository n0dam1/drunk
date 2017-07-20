Rails.application.routes.draw do
  root to: 'home#index'
  resources :posts, only: [:index, :new, :create]
  resources :users, only: [:index, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
