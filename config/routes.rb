Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'hikes#index'

  resources :hikes, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :user_hikes, only: [:index, :new, :create, :destroy]

end
