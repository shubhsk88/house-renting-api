require_relative('../../services/authentication_helper.rb')

class ApplicationController < ActionController::API
  
  def logged_in_user
    return unless decoded_token

    user_id = decoded_token[0]['user_id']
    @user = User.find_by(id: user_id)
  end

  def logged_in?
    !!logged_in_user # rubocop:disable Style/DoubleNegation
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
