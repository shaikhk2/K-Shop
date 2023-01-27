class UsersController < ApplicationController

    skip_before_action :authorized_user, only: [:create]

    def create 
        user = User.create( user_params )
        
        if user.valid?
            Cart.create!(user_id: user.id)
            session[:user_id] = user.id
            render json: user    
        else
            render json: { "errors": user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def login_check
        render json: @user
    end

    def update
        # byebug
        updated_user = User.find_by( id: params[:id])
        # byebug 
        if updated_user
            updated_user.update( id: params[:id], name: params[:name], username: params[:username], email: params[:email], address: params[:address], phone: params[:phone] )
            if updated_user.valid?
                render json: updated_user
            else 
                render json: { "errors": updated_user.errors.full_messages }, status: :unprocessable_entity
            end
        else 
           render json: { "error": "User not found" }, status: :not_found
        end
    end

    # def destroy
    #     user = User.find_by(id: params[:id])
    #     user.destroy
    #     render json: user
    # end

    private
    def user_params
        params.permit( :id, :user_id, :name, :username, :password, :email, :address, :phone )
    end
    # def cart_params
    #     params.permit( :name, user_id )
    # end
end

# persist in application controller
# token stuff in application controller
# 