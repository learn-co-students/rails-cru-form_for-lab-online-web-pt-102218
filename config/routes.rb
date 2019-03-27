Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:show, :create, :update]
  resources :genres, only: [:show, :create, :update]
  resources :songs, only: [:show, :create, :update]
  
end
