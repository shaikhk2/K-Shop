class UsersController < ApplicationController

    def create 
        user = User.create( user_params )
        
        if user.valid?
            # token = encode_token({user_id: user.id})
            Cart.create!(user_id: user.id)
                render json: user
            # render json: {user: user, token: token}        
        else
            render json: { "errors": user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # def persist
    #     token = encode_token({user_id: user.id})

    #     render json: {user: user, token: token}
    # end

    # def destroy
    #     user = User.find_by(id: params[:id])
    #     user.destroy
    #     render json: user
    # end

    private
    def user_params
        params.permit( :name, :username, :password, :email, :address, :phone )
    end
    # def cart_params
    #     params.permit( :name, user_id )
    # end
end

# persist in application controller
# token stuff in application controller
# 