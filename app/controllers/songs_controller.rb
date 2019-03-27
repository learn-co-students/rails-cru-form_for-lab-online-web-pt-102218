class SongsController < ApplicationController

    def new
        @song = Song.new
    end

    def show
        @song = Song.find_by(params[:id])
    end

    def create
        @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find_by(params[:id])
    end

    def update
        @song = Song.find_by(params[:id])
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
end
