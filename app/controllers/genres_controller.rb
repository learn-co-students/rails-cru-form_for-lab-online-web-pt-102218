class GenresController < ApplicationController

    def new
        @genre = Genre.new
    end

    def show
        @genre.Genre.find_by(params[:id])
    end

    def create
        @genre = Genre.create(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find_by(params[:id])
    end

    def update
        @genre = Genre.find_by(params[:id])
        @genre = Genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end
end
