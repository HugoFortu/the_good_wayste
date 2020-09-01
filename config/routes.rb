Rails.application.routes.draw do

  get 'map', to: 'places#map', as: 'map'
  get '/favorites', to: 'favorites#index', as: 'favorites'
  get '/scan', to: 'products#scan', as: 'scan'
  post '/scan/barcode', to: 'products#barcode'
  get '/scan/barcode', to: 'products#barcode'

  resources :products, only: [:show] do
    resources :components, only: [:new, :create]
    member do
      post '/favorites', to: 'favorites#create'
      delete '/favorites', to: 'favorites#destroy'
    end
  end

  resources :favorites, only: [:index]
  root to: 'pages#home'

  resources :places, only: [:show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
