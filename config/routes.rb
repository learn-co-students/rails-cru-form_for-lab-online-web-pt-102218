Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:new, :show, :create, :edit, :update]
  resources :genres, only: [:new, :show, :create, :edit, :update]
  resources :songs, only: [:index, :new, :show, :create, :edit, :update]
  
end
