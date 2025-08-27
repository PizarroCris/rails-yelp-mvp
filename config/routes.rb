Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
