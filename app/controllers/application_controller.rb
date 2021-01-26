class ApplicationController < ActionController::Base
    # before_action :get_item_from_cart
    helper_method :cart

  def cart 
    session[:cart] ||= []
  end

  def add_item_to_cart(item_id)
    # @item = Item.find(params[:id])
    cart << { id: item_id }
    flash[:notice] = "item added to cart!"
  end

#   def get_item_from_cart
#     @cart_items = item.find(cart)
#   end


end
