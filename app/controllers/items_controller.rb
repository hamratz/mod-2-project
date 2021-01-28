class ItemsController < ApplicationController
    skip_before_action :authorize, only: [:show, :index]
    def index
        @items = Item.all.shuffle.first
    end


    def show
        @item = Item.find(params[:id])
    end



end
