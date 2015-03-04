Rails.application.routes.draw do

  resources :users do
    member do
      get :dashboard
    end
  end

  resources :posts
  resources :comments


  root 'dashboard#index'
end
