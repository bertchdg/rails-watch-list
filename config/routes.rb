Rails.application.routes.draw do
  # get 'lists/index'
  # get 'lists/show'
  # get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "lists"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create] do
      resources :movies
    end
  end
  resources :bookmarks, only: [:destroy]
end
