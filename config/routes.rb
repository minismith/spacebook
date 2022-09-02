Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:show] do
    resources :spaces, only: %i[new create] do
      resources :bookings, only: %i[new create destroy]
    end
  end
  resources :spaces, only: %i[index show edit update destroy]
end
