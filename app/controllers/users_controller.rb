class UsersController < ApplicationController

  def index
   @users = User.all
   render json: @users
  end

  def github
   code = user_params[:code]
   byebug

  end

  def create
    @user = User.new(user_params)
      if @user.valid?
         @user.save
         render json: {
           jwt: encode_token({id: @user.id, first_name: @user.first_name })
         }
      end
  end

  private

  def user_params
   params.permit(:first_name, :last_name, :password, :email)
  end

  def encode_token(payload = {})
    exp = 24.hours.from_now.to_i
    payload[:exp] = exp
    JWT.encode(payload, ENV['SECRET'])
  end

end
