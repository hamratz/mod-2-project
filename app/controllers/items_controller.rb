class ItemsController < ApplicationController
    skip_before_action :authorize, only: [:show]
    def show
        @item = Item.find(params[:id])
    end

end
