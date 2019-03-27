Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:new, :show, :create, :update]
  resources :genres, only: [:new, :show, :create, :update]
  resources :songs, only: [:new, :show, :create, :update]
  
end
