Rails.application.routes.draw do
  resources :expedients
  resources :acts
  resources :matters
  resources :courts
  resources :judgments
  resources :districts
  resources :states
  resources :customer_types
  resources :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
