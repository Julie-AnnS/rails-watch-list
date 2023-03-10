Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
  end
  resources :bookmarks, only: [:new, :create]
  resources :bookmarks, only: :destroy
end
