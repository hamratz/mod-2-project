class ItemsController < ApplicationController
    def index
    end

    def show
        @item = Item.find(params[:id]) 
    end

    def destroy
        byebug
        Favorite.find(params[:id]).destroy
    end


end
