class CartsController < ApplicationController
    
    def update
      cart << params[:item_id] 
        # if session[:cart].include?(params[:item_id])
      flash[:notice] = "Crave added to cart!"
      redirect_to request.referrer
    end

    def show
      @hide_cart = true
    end

    def edit
      @hide_cart = true
    end

    def remove_item
      session[:cart].delete(params[:item_id])
      redirect_to request.referrer
    end

    def destroy
      session.delete(:cart)
      flash[:notice] = "Thank you! Your Craves are on the way!"
      redirect_to root_path
    end

  end
