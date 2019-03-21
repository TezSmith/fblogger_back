require 'rest_client'
require 'json'
CLIENT_ID = ENV['GITHUB_CLIENT_ID']
CLIENT_SECRET = ENV['GITHUB_CLIENT_SECRET']

class UsersController < ApplicationController

  def index
   @users = User.all
   render json: @users
  end

  def github
   code = request.headers["code"]
   result = RestClient.post('https://github.com/login/oauth/access_token',
                           {:client_id => CLIENT_ID,
                            :client_secret => CLIENT_SECRET,
                            :code => code},
                            :accept => :json)

   access_token = JSON.parse(result)['access_token']
   url = "https://api.github.com/user?access_token=#{access_token}"

   person = RestClient.get(url)
   render json: person
  end


  def create
    # byebug
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
   params.permit(:first_name, :last_name, :password, :email, :type)
  end

  def encode_token(payload = {})
    exp = 24.hours.from_now.to_i
    payload[:exp] = exp
    JWT.encode(payload, ENV['SECRET'])
  end

end
