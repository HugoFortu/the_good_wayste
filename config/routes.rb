Rails.application.routes.draw do

  get 'map', to: 'places#map', as: 'map'
  get '/favorites', to: 'favorites#index', as: 'favorites'
  get 'favorites/:id', to: 'favorites#show', as: 'favorite'
  get '/scan', to: 'products#scan', as: 'scan'
  post '/scan/barcode', to: 'products#barcode'
  get '/scan/barcode', to: 'products#barcode'

  resources :products, only: [:show] do
    resources :components, only: [:new, :create]
    resources :favorites, only: [:create, :delete]
  end

  resources :favorites, only: [:index]
  root to: 'pages#home'

  resources :places, only: [:show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
