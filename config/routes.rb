Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:show] do
    resources :spaces, only: %i[new create edit update delete]
  end
  resources :spaces, only: %i[index show]
end
