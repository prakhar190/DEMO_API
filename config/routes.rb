Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rocket_families, only: [:create, :index, :show, :update]
  resources :rockets, only: [:create, :index, :show, :update]
  resources :launches, only: [:create, :index, :show, :update]
end
