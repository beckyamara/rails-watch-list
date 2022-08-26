Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'bookmarks/new'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  # thats because we dont want to destroy the list
  resources :bookmarks, only: [:destroy]
end

# (create destroy edit index new show update)
# rails g controller lists index show new edit
