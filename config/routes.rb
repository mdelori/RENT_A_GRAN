Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :grannies, only: %i[index show new create]
  # resources :pages, only: [:home, :profile]
  resources :bookings, only: [:index, :new, :create, :destroy]
end
