Rails.application.routes.draw do
  resources :events
  devise_for :users
  get 'services/chart'
  resources :services do
    collection do
      get 'chart1'
    end
  end  

  resources :tecnics
  resources :service_modes
  resources :service_types
  resources :service_areas
  resources :repair_histories
  resources :repair_types
  resources :areas 
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'events#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
