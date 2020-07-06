Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :characters, only: [:index, :show]
  resources :abilities, only: [:index, :show]
  resources :game_saves
  resources :modifiers
end
