Rails.application.routes.draw do
  get 'reminders/index'

  get 'reminders/new'

  get 'reminders/create'

  get 'reminders/update'

  get 'reminders/destroy'

#  resources :users do
#    resources :reminders
#  end
# Above is equal to below
  get 'users'        => 'users#index'
  get 'users/new'    => 'users#new'
  get 'users/:id'    => 'users#show'
  post 'users'       => 'users#create'
  put 'users'        => 'users#update'
  delete 'users/:id' => 'users#destroy'

  get    'users/:user_id/reminders'     => 'reminders#index'
  get    'users/:user_id/reminders/new' => 'reminders#new'

  get    'users/:user_id/reminders/:id' => 'reminders#show' #localhost:3000/users/3/reminders/4 | users_reminders_path(nil, reminder_id)

  post   'users/:user_id/reminders/'    => 'reminders#create'
  put    'users/:user_id/reminders/:id' => 'reminders#update'
  delete 'users/:user_id/reminders/:id' => 'reminders#destroy'


  get 'welcome/about'

  get 'jobs' => 'welcome#employment'

  root 'welcome#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
