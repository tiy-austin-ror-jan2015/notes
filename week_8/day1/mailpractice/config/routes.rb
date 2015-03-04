Rails.application.routes.draw do

  resources :comments
  resources :posts

  devise_for :users

  root 'dashboard#index'

end
