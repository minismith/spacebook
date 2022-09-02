Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: %i[show] do
    resources :spaces, only: %i[new create] do
      resources :bookings, only: %i[new create]
    end
  end
  resources :spaces, only: %i[index show edit update destroy]
  resources :bookings, only: [:destroy]
end
