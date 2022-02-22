Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :grannies, only: %i[index show new create]
  resources :bookings, only: %i[index new create destroy]
=======
  resources :grannies, only: %i[index show new create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]
>>>>>>> e408a0a39f3e23f1e84e851ed32091ede145e010
end
