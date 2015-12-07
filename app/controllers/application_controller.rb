include ActionController::HttpAuthentication::Basic::ControllerMethods
include ActionController::HttpAuthentication::Token::ControllerMethods

class ApplicationController < ActionController::API

  before_filter :authenticate_user_from_token, except: [:token]

  def token
    authenticate_with_http_basic do |email, password|
      user = User.find_by(email: email)
      if user && user.password == password
        render json: { token: user.auth_token }
      else
        render json: { error: 'Incorrect credentials' }, status: 401
      end
    end
  end 
end

private
   
def authenticate_user_from_token

  # Allow easy impersonation in development
  if Rails.env.development? and
     params[:mode] == 'test'
    return User.first
  end

  unless authenticate_with_http_token { |token, options| User.find_by(auth_token: token) }
    render json: { error: 'Bad Token'}, status: 401
  end 
end
