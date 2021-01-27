class CartsController < ApplicationController


    def update
      add_item_to_cart(params[:item_id])
      redirect_to request.referrer
    end

    def show
     get_item_from_cart
    end

    def edit
      byebug
      get_item_from_cart
    end

    def destroy

    end

  end
