class FavoritesController < ApplicationController

    def show
        @favorites = Favorite.all
    end
    def create
        if @favorite = Favorite.where("user_id: = #{params[:user_id]} AND item_id: = #{params[:item_id]}")
            flash[:notice] = "This is already one of your Craves."
        else
            @favorite = Favorite.new(user_id: params[:user_id], item_id: params[:item_id])
            @favorite.save
            flash[:notice] = "Yay! You've got a new Crave!"
        end
        redirect_to request.referrer
    end

    def destroy
        Favorite.find(params[:id]).destroy
        redirect_to user_path(params[:user_id])
    end

end
