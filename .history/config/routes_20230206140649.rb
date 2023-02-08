Rails.application.routes.draw do
  resources :missions
  resources :names
  resources :scientists, only: [:index, :show, :create]
  resources :planets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
