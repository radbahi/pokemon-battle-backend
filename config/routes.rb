Rails.application.routes.draw do
  resources :types
  resources :pokemons
  resources :pokemon_types
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
