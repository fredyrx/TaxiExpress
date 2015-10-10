Rails.application.routes.draw do
  
  
 
  resources :services
  resources :address_favorites
  resources :routes
  resources :routes
  resources :routes
  resources :routes
  resources :addresses
  
  devise_for :users
  
  devise_scope :user do
    
    authenticated :user do
      root :to => 'services#index'
    end
    
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
    
  end
  
  get '/finish_service', to: "services#finish_service", as: "finish_service"
  
  get 'home/login'
  get 'home/register'
  resources :operator
  resources :pasajeros
  resources :passengers
  get 'forms/form_pasajero'
  
  get 'operator/dashboard'
  get 'operator/set_driver'
  get 'operator/fin_services'
  get 'operator/prices'
  get 'operator/driver_actives'
  get 'operator/feedback'

  get 'forms/login_pasajero'
  #et 'passenger/index.html'

  get 'driver/dashboard'
  get 'driver/last_services'
  get 'driver/pend_services'
  get 'driver/me'
  
  get 'passenger/reserva'
  get 'passenger/rutas'
  get 'passenger/comentarios'
  get 'passenger/mapas'
  get 'home/index'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   #root 'home#index'

  
end
