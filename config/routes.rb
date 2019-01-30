Rails.application.routes.draw do
  devise_for :users
  resources :planets do
    resources :bookings, only: [:new, :create]
  end

  resources :users, only: [:show]
  root to: 'planets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
