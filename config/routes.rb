Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :grannies, only: %i[index show new create]
  resources :bookings, only: %i[index new create destroy]
end
