Rails.application.routes.draw do
  resources :addresses
  resources :codigo_postals
  resources :towns
  resources :townships
  resources :town_types
  resources :expedients
  resources :acts
  resources :matters
  resources :courts
  resources :judgments
  resources :districts
  resources :states
  resources :customer_types
  resources :customers do
    resources :customer_blogs
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
