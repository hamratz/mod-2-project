class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:new, :create]
    #login, signup, logout & empty cart

    def create
        user = User.find_by(name: params[:name])
        if user.try(:authenticate, params[:password])
            session[:user_id] = user.id

            redirect_to user_path(user)
        else
            flash.alert = ["Incorrect name or password"]
            redirect_to login_path
        end
  end

  def destroy
    session.delete(:user_id)
    session.delete(:cart)
    redirect_to login_path
  end
end
