class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]
  
    # REGISTER
    def create
      @user = User.create(user_params)
      if @user.valid?
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token,message:"User Created"}
      else
        render json: {status:400, message: "Username already exists"}
      end
    end
  
    # LOGGING IN
    def login
      @user = User.find_by(username: params[:username])
  
      if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token,message: "Authentication Successful"}
      else
        render json: {message: "Invalid username or password",status:403}
      end
    end
  
  
    def auto_login
      render json: @user.to_json(:include => [:houses,:favourites])

    end
  
    private
  
    def user_params
      params.permit(:username, :password, :name)
    end
  
  end
  