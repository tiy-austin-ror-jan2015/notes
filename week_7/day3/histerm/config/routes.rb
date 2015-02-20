Rails.application.routes.draw do

  resources :sessions, param: :slug do
    resources :commands
  end

  root 'welcome#index'

end
