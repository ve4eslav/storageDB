Rails.application.routes.draw do
  resources :manufactures
  resources :components
  resources :parameters
  resources :parameter_measures
  resources :packages
  resources :component_types
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
