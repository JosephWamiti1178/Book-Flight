Rails.application.routes.draw do
  resources :flight_airports
  resources :airports
  resources :flights
  resources :users
  resources :first_names
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
