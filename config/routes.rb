Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  resources :clientes
  resources :veiculos
  resources :vagas
  resources :movimentos, only: [ :new, :create, :index ]
end
