Rails.application.routes.draw do
  resources :missions
  resources :scientists, only: [ :index, :show, :create, :update, :destroy ]
  resources :planets, only: [ :index ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
