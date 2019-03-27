class ArtistsController < ApplicationController

    def show
        @artist = Artist.find_by(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(params.require(:artists).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def update
        @artist = Artist.find_by(params[:id])
        @artist.update(params.require(:artists).permit(:name, :bio)
        redirect_to artist_path(@artist)
    end
end
