class CartItemsController < ApplicationController

    def index
        cart = CartItem.all
        render json: cart
    end

    def create 
        cart = Cart.find_by(user_id: params[:user_id])
        item = Item.find(params[:item_id])
        cartitem = CartItem.create(cart_id: cart.id, item_id:item.id )
        
        if cartitem.valid?
            render json: cartitem
        else
            render json: { "errors": cartitem.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        showItem = CartItem.find_by(id: params[:id])
        if showItem
            render json: showItem
        else 
            render json: { "error": "No such item" }, status: 404
        end
    end

    def destroy

        cartitem = CartItem.find_by( id: params[:id])
        if cartitem 
            cartitem.destroy
            head :no_content
        else 
            render json: { "error": "Cartitem not found" }, status: 404
        end
    end
    # def destroy
    #         cartitem.delete :user_id
    #         head :no_content
    # end
    private 
    # def cartitem_params
    #     params.permit( :item_id, :user_id )
    # end
end
