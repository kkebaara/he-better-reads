Rails.application.routes.draw do
  resources :reviews
  namespace :api do
    resources :authors, only: [:create, :index, :show, :update]
    resources :books, only: [:create, :index, :show, :update]
    resources :users, only: [:create, :index, :show, :update]
  end
end
