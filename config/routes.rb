Rails.application.routes.draw do
  resources :services
  resources :tecnics
  resources :service_modes
  resources :service_types
  resources :service_areas
  resources :repair_histories
  resources :repair_types
  resources :areas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
