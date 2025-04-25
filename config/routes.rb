Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  resources :clientes

  resources :veiculos do
    collection { get :search_by_plate }
  end

  resources :vagas
  resources :movimentos, only: [ :new, :create, :index ]
end
