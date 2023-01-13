class ApplicationController < ActionController::API
  include ActionController::Cookies


  before_action :authorized_user

  def current_user 
    User.find_by(id: params[:id])
  end

  def authorized_user
    render json: {error: "Not authorized"}, status: :unauthorized unless current_user
  end

end
