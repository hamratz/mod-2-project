class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
    end
    
    def show
    end

    def destroy
        Favorite.find(params[:id]).destroy
        redirect_to user_path(params[:user_id])
    end


end
