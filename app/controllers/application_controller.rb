class ApplicationController < ActionController::Base
    before_action :get_item_from_cart
    before_action :authorize
    helper_method :current_user
    # this happens first

  def cart
    session[:cart] ||= []
  end
  
  # helper method for id's in cart
  def get_item_from_cart
    @cart_items = Item.find(cart)
  end

  #sessions methods below
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path unless current_user
  end
end
