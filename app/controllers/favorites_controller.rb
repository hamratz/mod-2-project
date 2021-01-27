class FavoritesController < ApplicationController

    # def new
    #     @favorite = Favorite.new
    # end

    def create
        byebug
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
            puts "Yay! You've got a new Crave!"
        else
            flash.alert = @user.errors.full_messages
            redirect_to item_path
        end
    end

    def destroy
        Favorite.find(params[:id]).destroy
        redirect_to user_path(params[:user_id])
    end
    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :item_id)
    end

end
