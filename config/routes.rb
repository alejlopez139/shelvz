Rails.application.routes.draw do
  # root "articles#index"
  root "books#searchBooks"
  
  resources :books
  resources :bookshelves
  devise_for :users



  get "/searchbyauthor" => "books#searchByAuthor"
  get "/searchbooks" => "books#searchBooks"
  get "/searchbookresults" => "books#searchBookResults"
  get "/:username" => "users#show", as: :user

  
end
