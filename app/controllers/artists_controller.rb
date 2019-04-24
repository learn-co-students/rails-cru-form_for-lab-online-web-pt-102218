class ArtistsController < ApplicationController
    def index
        @artists = all_artists
    end
    
    def show
        @artist = find_artist_id
    end
    
    def new
        @artist = Artist.new
    end
    
    def create
        @artist = Artist.new(post_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = find_artist_id
    end

    def update
        @artist = find_artist_id
        @artist.update(post_params(:name, :bio))
        redirect_to artist_path(@artist)
    end
    
    private

    def all_artists
        Artist.all
    end

    def find_artist_id
        Artist.find(params[:id])
    end

    def post_params(*args)
        params.require(:artist).permit(*args)
    end
    
end
