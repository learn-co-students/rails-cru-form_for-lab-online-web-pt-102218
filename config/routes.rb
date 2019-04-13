Rails.application.routes.draw do

  resources :songs, only: [:index, :new, :create, :edit, :update, :show]

  resources :artists, only: [:index, :new, :create, :edit, :update, :show]

  resources :genres, only: [:index, :new, :create, :edit, :update, :show]

  # get 'songs/index' => 'songs#index', :as => :songs

  # get 'songs/new' => 'songs#new', :as => :new_song

  # post 'songs/index' => 'songs#create'

  # get 'songs/edit' => 'songs#edit', :as => :edit_song

  # put 'songs/:id' => 'songs#update'

  # get 'songs/:id' => 'songs#show', :as => :song

  # get 'genres/index' => 'genres#index', :as => :genres

  # get 'genres/new' => 'genres#new', :as => :new_genre

  # post 'genres/index' => 'genres#create'

  # get 'genres/edit' => 'genres#edit', :as => :edit_genre

  # put 'genres/:id' => 'genres#update'

  # get 'artists/index' => 'artists#index', :as => :artists

  # get 'genres/:id' => 'genres#show', :as => :genre

  # get 'artists/new' => 'artists#new', :as => :new_artist

  # post 'artists/index' => 'artists#create'

  # get 'artists/edit' => 'artists#edit', :as => :edit_artist

  # put 'artists/:id' => 'artists#update'

  # get 'artists/:id' => 'artists#show', :as => :artist

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
