Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'products', to: 'products#index'
  # get 'products/:id', to: 'products#show'
  resources :points, only: [:index]
  resources :collections, only: [:show, :index, :update]
  resources :products, only: [:show, :index]
end
