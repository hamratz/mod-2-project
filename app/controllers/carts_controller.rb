class CartsController < ApplicationController

    def update
      add_item_to_cart(params[:item_id])
      redirect_to categories_path
    end
    
  end