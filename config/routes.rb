Rails.application.routes.draw do
  devise_for :users
  root "communication#index"
  resources :users, only: [:edit, :update]
end
