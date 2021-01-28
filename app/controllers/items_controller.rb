class ItemsController < ApplicationController
    skip_before_action :authorize, only: [:show, :index]



    def show
        @item = Item.find(params[:id])
    end



end
