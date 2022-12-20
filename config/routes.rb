Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogposts
  resources :posts
  resources :blogs
  resources :foods
  resources :browse_foods
  resources :recipes
  devise_for :users
  get 'home/privpolicy'
  get 'home/about'
  get 'home/corporate'
  get 'home/health'
  get 'home/recipes'
  root 'home#index'

end
