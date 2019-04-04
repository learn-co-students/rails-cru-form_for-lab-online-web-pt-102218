class SongsController < ApplicationController
  def edit
    @song = Song.find(params[:id])
  end

  def new
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  def create
    @song = Song.create(name: params[:song][:name], genre_id: params[:song][:genre_id], artist_id: params[:song][:artist_id])
    redirect_to song_path(@song)
  end 

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end
end
