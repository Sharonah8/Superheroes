Rails.application.routes.draw do
  resources :powers
  resources :hero_powers
  resources :heroes, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
