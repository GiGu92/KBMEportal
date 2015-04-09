Rails.application.routes.draw do


  get 'sessions/new'
  get 'owngroupreports/cancel'
  get 'owngroupreports/submit'
  get 'owngroupreports/show'
  get 'mytender/show'
  get 'mytender/edit_report'
  get 'mytender/update_report'
  get 'mytender/new_report'
  get 'mytender/create_report'
  get 'evaluation/show'
  get 'evaluation/showtotal'
  get 'evaluation/finalize'
  get 'rating/show'
  get 'rating/rate'
  get 'users/edit'
  get 'users/update'
  get 'users/profile'
  get 'users/login'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  #get "sign_up" => "users#new", :as => "sign_up"

  post 'sign_up' => 'users#new'
  get 'sign_up' => 'users#new'
  #root :to => "users#new"
  resources :users
  resources :sessions
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'info#index'

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
