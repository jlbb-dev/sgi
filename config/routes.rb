Rails.application.routes.draw do
  devise_for :users
  resources :services
  resources :tecnics
  resources :service_modes
  resources :service_types
  resources :service_areas
  resources :repair_histories
  resources :repair_types
  resources :areas do
    collection do
      get 'delete_content'
    end
  end  

  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
