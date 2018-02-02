Rails.application.routes.draw do
  resources :products
  resources :movies, only: [:show, :index] do
    get 'search/*query', to: 'movies#index', as: :search, on: :collection
  end

  root 'movies#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
