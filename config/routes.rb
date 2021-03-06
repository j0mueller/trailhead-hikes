Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'hikes#index'

  resources :hikes, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :show]
  resources :user_hikes, only: [:index, :update, :destroy, :show, :edit] do
    resources :journal_entries, only: [:index, :new, :create]
  end
  resources :journal_entries, only: [:show, :update, :destroy]
  resources :wishlists, only: [:create, :update]
  resources :my_hikes, only: [:create]
  resources :gmaps, only: [:new]


  namespace :api do
    namespace :v1 do
      resources :hikes, only: [:index]
    end
  end

end
