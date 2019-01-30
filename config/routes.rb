Rails.application.routes.draw do
  devise_for :users
  resources :planets do
    resources :bookings, only: [:new, :create]
  end
  root to: 'planets#index'
  get 'dashboard', to: 'dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
