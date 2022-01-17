Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index", index, create, new, edit, update, show, delete
  resources :comics, only: [:index]
end
