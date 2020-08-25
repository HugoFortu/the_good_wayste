Rails.application.routes.draw do
  get 'scan', to: 'products#scan', as: 'scan'

  resources :products, only: [:show] do
    resources :components, only: [:new, :create]
  end

  resources :favorites, only: [:index]
  root to: 'pages#home'

  resources :places, only: [:show] do
    member do
      get 'map', to: 'places#map', as: 'map'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
