Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :activities, only: %i[index show] do
  resources :profiles, only: %i[new create show]
  resources :bookings, only: %i[new create show]
  end

  resources :bookings, only: :destroy
end


