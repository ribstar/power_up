Rails.application.routes.draw do
  devise_for :users
  root 'communities#index'
  resources :users, only: [:edit, :update]
  resources :communities, only: [:index, :new, :create, :edit, :update]
end
