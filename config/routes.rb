Onemdl::Application.routes.draw do
  
  # routes for signup, login and logout pages
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  # storing user sessions
  resources :sessions
  resources :users
  
  resources :statistics
  resources :activities
  
  resources :announcements
  match 'announcements/:id/hide', to: 'announcements#hide', as: 'hide_announcement', via: :get
  
  resources :devices do
    resources :support_levels
    resources :service_levels
    resources :environments
    resources :network_interfaces
    resources :licenses
  end
  
  resources :license_types do
    resources :organisations
  end
  
  resources :licenses do
    resources :license_types
  end
  
  resources :license_types
  
  resources :network_interfaces do
    resources :network_uses
  end
  
  resources :network_uses
  
  resources :organisations do
    resources :relationships
    resources :devices
  end
  resources :devices
  
  resources :support_levels
  resources :service_levels
  resources :relationships
    
  resources :device_models do
    resources :device_types
    resources :manufacturers
  end
  
  resources :device_types
  resources :manufacturers
  
  resources :environments
  
  root 'staticpages#home'
  
  resources :onemdl_settings, :only => [:index, :edit]
  
  match '/onemdl_settings',      to: 'onemdl_settings#index',     via: 'get'
  match '/onemdl_settings/edit', to: 'onemdl_settings#edit',     via: 'get'
  
  match '/help',    to: 'staticpages#help',     via: 'get'
  match '/about',   to: 'staticpages#about',    via: 'get'
  match '/contact', to: 'staticpages#contact',  via: 'get'
  match '/faq',     to: 'staticpages#faq',      via: 'get'
  
  
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
