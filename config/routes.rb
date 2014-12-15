Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'redirections#new'
  
  get 'static_pages/redirect_1'

  get 'static_pages/redirect_2'

  get 'static_pages/redirect_3'

  resources :redirections

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


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

  # Example resource route with more complex sub-resources:key => "value", 
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

  # fallback route
  get '*route', to: 'redirections#fallback'
end

# Uncomment this when you want to use the fallback method
# routes = Rails.application.routes
# routes.disable_clear_and_finalize = true

# Redirection.all.each do |r|
#   routes.draw { get "#{r.route}", to: redirect("#{r.redirect}") }
# end
# # ActiveSupport.on_load(:action_controller) { routes.finalize! }
# routes.disable_clear_and_finalize = false
# --------------------------------------------------------------
