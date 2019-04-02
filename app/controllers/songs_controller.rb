class SongsController < ApplicationController
    def new 
        @song = Song.new
    end

    def show 
        @song = Song.find(params[:id])
    end 
    def create
        @song = Song.new(params.require(:song).permit(:name))
        @song.save 
      redirect_to song_path(@song)
    end

    def edit 
        @song = Song.find(params[:id])
    end

    def update 
        @song = Song.find(params[:id])
        @song = Song.update(params.require(:song).permit(:name))
      redirect_to song_path(@song)
    end
    def index 
        @songs = Song.all 
    end
end
