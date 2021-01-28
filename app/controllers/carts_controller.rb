class CartsController < ApplicationController
  skip_before_action :authorize, only: [:update, :show, :edit, :destory]

    # add item to cart - i think we need to move this
    def update
      add_item_to_cart(params[:item_id])
      redirect_to request.referrer
    end

    def show
     get_item_from_cart
    end

    def edit
      get_item_from_cart
    end

    # remove item from cart
    def destroy
      render :checkout
    end

  end
