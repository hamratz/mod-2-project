class CheckoutsController < ApplicationController
    skip_before_action :authorize

    def new
        @checkout = Checkout.new
    end

    def create
        session[:cart].each do |id|
            Checkout.create(item_id: id.to_i, user_id: session[:user_id])
        end
        session.delete(:cart)
        flash[:notice] = "Thank you! Your Craves are on the way!"
        redirect_to root_path
    end

end
