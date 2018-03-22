Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "pokemon/capture", to: "pokemons#capture", as: "capture"
  patch "pokemon/damage", to: "pokemons#damage", as: "damage"
  get 'pokemon/new', to: 'pokemons#new'
  post 'pokemon/trainers', to: 'pokemons#create'
end
