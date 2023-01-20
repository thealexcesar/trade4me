Rails.application.routes.draw do
  namespace :admin do
    resources :users
    # get 'users/index'
    # get 'users/edit'
    # get 'users/new'
    # get 'users/show'
  end
  root to: 'home#index'
  devise_for :users, path: ''
  # devise_for :users
end
