class SongsController < ApplicationController

    def index
        @songs = all_songs
    end

    def show
        @song = find_song_id
        @artist = @song.artist
        @genre = @song.genre
    end

    def new 
        @song = Song.new
    end

    def create
        @song = Song.create(post_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def edit
        @song = find_song_id
    end
    
    def update
        @song = find_song_id
        @song.update(post_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    private
    def all_songs
      Song.all
    end

    def find_song_id
      Song.find(params[:id])
    
    end
    def post_params(*args)
      params.require(:song).permit(*args)
    end
end
