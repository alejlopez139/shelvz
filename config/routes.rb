Rails.application.routes.draw do
  # root "articles#index"
  root "bookshelves#index"
  resources :books
  resources :bookshelves
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
