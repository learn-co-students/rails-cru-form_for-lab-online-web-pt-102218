class GenresController < ApplicationController
    
    def index
        @genres = all_genres
    end
    
    def show
        @genre = find_genre_id
    end
    
    def new
        @genre = Genre.new
    end
    
    def create
        @genre = Genre.new(post_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = find_genre_id
    end

    def update
        @genre = find_genre_id
        @genre.update(post_params(:name))
        redirect_to genre_path(@genre)
    end
    
    private

    def all_genres
        Genre.all
    end

    def find_genre_id
        Genre.find(params[:id])
    end

    def post_params(*args)
        params.require(:genre).permit(*args)
    end
    
end
