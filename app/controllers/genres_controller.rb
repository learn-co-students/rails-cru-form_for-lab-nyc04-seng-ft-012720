class GenresController < ApplicationController
    # [:index, :show, :new, :create, :edit, :update]
    def index
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        redirect_to Genre.create(genre_params)
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to @genre
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end
end
