Rails.application.routes.draw do
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

  # fungsi path: 'adm/articles' akan mengganti url default yaitu localhost:3000/articles
  #  menjadi localhost:3000/adm/articles
  resources :articles, path: 'adm/articles' #route dg RESTfull
  

  get 'adm/cars', to: 'cars#index'
  get 'adm/cars/form_insert', to: 'cars#form_insert'
  post 'adm/cars/insert_data', to: 'cars#insert_data'
  get 'adm/cars/form_update/:id', to: 'cars#form_update'
  patch 'adm/cars/update_data', to: 'cars#update_data'
  delete 'adm/cars/hapus/:id', to: 'cars#hapus'

  get 'abc', to: 'cars#show'
end
