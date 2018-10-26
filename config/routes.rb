Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  get "capture", to: 'pokemon#capture'
  patch "capture", to: 'pokemon#capture'
  get "damage", to: 'pokemon#damage'
  patch "damage", to: 'pokemon#damage'
  get "create", to: 'pokemon#new'
  post "create", to: 'pokemon#create', as:"pokemons_create"
end
