class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :authorized_user

  # def encode_token(payload)
  #   JWT.encode(payload, 's3cr3tpa$$w0rd')
  # end
  
  # def auth_header
  #   request.headers['Authorization']
  # end

  # def decoded_token
  #   if auth_header
  #     token = auth_header.split(' ')[1]
  #     begin
  #       JWT.decode(token, 's3cr3tpa$$w0rd', true, algorithm: 'HS256')
  #     rescue JWT::DecodeError
  #       nil
  #     end
  #   end
  # end

  # def logged_in_user
  #   if decoded_token
  #     user_id = decoded_token[0]['user_id']
  #     user = User.find_by(id: user_id)
  #   end
  # end

  # def current_user?
  #   !!logged_in_user
  # end
  def current_user 
    User.find_by(id: session[:user_id])
  end

  def authorized_user
    render json: {error: "Not authorized"}, status: :unauthorized unless current_user
  end

end
