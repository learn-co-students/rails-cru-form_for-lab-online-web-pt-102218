Rails.application.routes.draw do
  get 'songs/index' => 'songs#index', :as => :songs

  get 'songs/:id' => 'songs#show', :as => :song

  get 'songs/new' => 'songs#new', :as => :new_song

  post 'songs/create' => 'songs#create'

  get 'songs/edit' => 'songs#edit', :as => :edit_song

  put 'songs/update' => 'songs#update'

  get 'genres/index' => 'genres#index', :as => :genres

  get 'genres/:id' => 'genres#show', :as => :genre

  get 'genres/new' => 'genres#new', :as => :new_genre

  post 'genres/create' => 'genres#create'

  get 'genres/edit' => 'genres#edit', :as => :edit_genre

  put 'genres/update' => 'genres#update'

  get 'artists/index' => 'artists#index', :as => :artists

  get 'artists/:id' => 'artists#show', :as => :artist

  get 'artists/new' => 'artists#new', :as => :new_artist

  post 'artists/create' => 'artists#create'

  get 'artists/edit' => 'artists#edit', :as => :edit_artist

  put 'artists/update' => 'artists#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
