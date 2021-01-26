class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
    end
    
    def show
    end
end
