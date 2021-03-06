Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :users, only: :show
  resources :posts, only: [:new, :create, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  get 'genre/:id', to: 'posts#search_genre'
end
