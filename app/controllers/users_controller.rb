class UsersController < ApplicationController
    skip_before_action :authorize, only: [:new, :create]

    # this will our returning user login
    def index
        @hide_cart = true
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        redirect_to user_path(current_user) if @user != current_user
    end

    # create new user page here
    def new
       @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
          session[:user_id] = @user.id

          redirect_to user_path(@user)
        else
          flash.alert = @user.errors.full_messages
          redirect_to signup_path
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

    # def user_params
    #     params.require(:user).permit(:name, :email)
    # end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
