Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  resources :planets do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [] do
    member do
      put 'accept'
      put 'decline'
    end
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:show, :update]

  root to: 'pages#home'
  get 'dashboard', to: 'dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#bookings/id/Reviews/new...
