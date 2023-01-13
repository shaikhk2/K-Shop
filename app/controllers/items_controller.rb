class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, status: :ok
    end

    def show
        item = Item.find_by(id:params[:id])
        if item
            render json: item
        else 
            render json: {"error": "Item not found"}, status: :not_found
        end
    end
end
