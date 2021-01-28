class UsersController < ApplicationController

    # this will our returning user login
    def index
        @hide_cart = true
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    # create new user page here
    def new
    end

    def create
       @user = User.create(user_params)
       if @user.save
        redirect_to user_path(@user)
      else
        flash.alert = @user.errors.full_messages
        redirect_to users_path
      end
    end

    def edit
        @hide_cart = true
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id]).destroy
        redirect_to categories_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end

    def user_password_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
