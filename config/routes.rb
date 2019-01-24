Rails.application.routes.draw do
  devise_for :users
  root to: "tweet#index"
  resources :tweets, only: [:index, :shoe, :new, :craete, :destroy, :edit, :update]
  resources :comments, only: [:create]
  resources :users, only: [:show]
end
