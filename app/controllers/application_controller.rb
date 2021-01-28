class ApplicationController < ActionController::Base
    before_action :get_item_from_cart
    # this happens first

  def cart
    session[:cart] ||= []
  end
  
  # helper method for id's in cart
  def get_item_from_cart
    @cart_items = Item.find(cart)
  end


end
