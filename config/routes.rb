Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: [:new, :edit]
  resources :characters, only: [:index, :show]
  resources :abilities, only: [:index, :show]
  resources :game_saves, except: [:new, :edit]
  resources :modifiers, except: [:new, :edit]

  post '/login', to: 'users#login'

end
