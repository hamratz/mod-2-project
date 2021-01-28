class CheckoutsController < ApplicationController
    skip_before_action :authorize

    def new
        @checkout = Checkout.new
    end

    def create
        @checkout = Checkout.new(checkout_params)
        @checkout.save 
        flash[:notice] = "Thank you! Your Craves are on the way!"
        redirect_to root
    end

    private
    
    def checkout_params
        params.require(:checkout).permit(:address, :address_2, :city, :state, :zip_code, :user_id, :item_id )
    end
    
end
