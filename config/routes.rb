Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :edit, :update, :destroy, :show]

  resources :genres, only: [:index, :new, :create, :edit, :update, :destroy, :show]

  resources :artists, only: [:index, :new, :create, :edit, :update, :destroy, :show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
