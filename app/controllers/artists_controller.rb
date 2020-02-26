class ArtistsController < ApplicationController
    # [:index, :show, :new, :create, :edit, :update]
    def index
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        redirect_to Artist.create(artist_params)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
	    @artist.update(artist_params)
	    redirect_to @artist
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
