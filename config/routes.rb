Rails.application.routes.draw do
  resources :reviews
  namespace :api do
    resources :authors, only: [:create, :index, :show, :update]

    resources :books, only: [:create, :index, :show, :update] do 
      get '/reviews', to: 'books/reviews#index'
    end
    
    resources :users, only: [:create, :index, :show, :update]
  end
end
