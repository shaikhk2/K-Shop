class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :authorized_user

  def current_user 
    @user = User.find_by(id: session[:user_id])
  end

  def authorized_user
    render json: { message: "Please log in" }, status: :unauthorized unless current_user
  end

end
