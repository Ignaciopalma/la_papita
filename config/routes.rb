Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'

  devise_for :managers, controllers: {
    sessions: 'managers/sessions'
    registrations: 'managers/sessions'
    confirmations: 'managers/sessions'
    omniauth_callbacks: 'managers/sessions'
    passwords: 'managers/sessions'
    unlocks: 'managers/sessions'
  }
  resources :end_shifts
  devise_for :cashiers, controllers: {
    sessions: 'cashiers/sessions'
    registrations: 'cashiers/sessions'
    confirmations: 'cashiers/sessions'
    omniauth_callbacks: 'cashiers/sessions'
    passwords: 'cashiers/sessions'
    unlocks: 'cashiers/sessions'
  }
  
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
    registrations: 'admins/sessions'
    confirmations: 'admins/sessions'
    omniauth_callbacks: 'admins/sessions'
    passwords: 'admins/sessions'
    unlocks: 'admins/sessions'

  }
  resources :consumptions
  resources :supplies  do
    collection do
      put :directUpdate
    end    
  end
  resources :order_details
  
  resources :orders do
    collection do
      put :update_supplies
    end    
  end
  resources :products
  resources :categories
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
