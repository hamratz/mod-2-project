class ApplicationController < ActionController::Base
    before_action :get_item_from_cart
    before_action :authorize
    helper_method :current_user
    helper_method :items_all, :favorites_all
    # this happens first

  def cart
    session[:cart] ||= []
  end

  def items_all
    @items = Item.all.last(10)
  end

  def favorites_all
    fav_count = Hash.new(0)
    Favorite.all.select {|fav| fav_count[fav] += 1}
    fav_count.sort_by { |fav,number| number}.last[0]
  end


  # def add_item_to_cart(item_id)
  #   cart << item_id
  #   flash[:notice] = "item added to cart!"
  # end

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
