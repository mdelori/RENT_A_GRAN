Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :grannies, only: %i[index show new create] do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :bookings, only: %i[index new create destroy]
end
