Qichebaoyang::Application.routes.draw do
  resources :service_item_product_auto_model_ships

  resources :service_item_products

  resources :service_station_administrator_service_station_ships

  resources :service_station_administrators

  resources :customer_service_station_ships

  resources :maintenance_goods

  resources :car_maintenance_infos

  resources :customer_service_item_ships

  resources :customers

  resources :service_stations do
    resources :customers
  end

resources :service_items
resources :service_stations
  get 'service_station_lists', to: 'service_stations#service_station_lists'
  resources :user_administrations
  resources :user_records

  devise_for :users

  resources :users do
    resource :user_records
  end

  resources :auto_models
  resources :auto_maintenances
  resources :auto_brands

  get 'user_record/update_auto_models' => 'user_records#update_auto_models'
  get 'm' => 'user_records#m_new'
  get 'service_item/update_auto_models' => 'service_items#update_auto_models'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'user_records#new'

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
