Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to: 'pokemons#capture', as: 'capture'
  patch '/damage', to: 'pokemons#damage', as: 'damage'
  patch '/release', to: 'pokemons#release', as: 'release'
  patch "heal", to: "pokemons#heal", as: :heal
  get 'pokemons/new', to: "pokemons#new", as: 'new_pokemon'
  post 'pokemons/new', to: "pokemons#create"
end
