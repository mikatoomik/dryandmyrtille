Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'products', to: 'pages#product'
  resources :points, only: [:index]
  resources :collections, only: [:show, :index]
end
