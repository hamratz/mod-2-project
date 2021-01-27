class SessionsController < ApplicationController
    def create
        user = User.find_by(name: params[:name])
    # confirm whether the passwords match
        if user.try(:authenticate, params[:password])
            session[:user_id] = user.id

            redirect_to user_path(user)
        else
             flash.alert = ["Incorrect username or password"]
            redirect_to new_session_path
        end
    # redirect appropriately
  end
end
