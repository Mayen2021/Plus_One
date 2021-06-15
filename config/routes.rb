Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :activities, only: %i[index show new create] do
    collection do
      get :results
    end

    resources :bookings, only: %i[create]

  end

  resources :chatrooms, only: %i[show] do
    resources :messages, only: %i[create]

    resources :bookings, only: %i[create update]

  end
  
  resources :bookings, only: %i[index destroy]
  resources :profiles, only: %i[new create show edit update]

end
