class UsersController < ApplicationController
  def login
    @user = User.find_by_email(params[:email])
    if @user.valid_password?(params[:password])
      @user.reset_authentication_token!
      @data = {
        :status => "success",
        :authentication_token => @user.authentication_token
      }
    else
      @data = {
        :status => "fail",
        :error_code => "100"
      }
    end
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      @user.reset_authentication_token!
      @data = {
        :status => "success",
        :authentication_token => @user.authentication_token
      }
    else
      @data = {
        :status => "fail",
        :error_code => "100"
      }
    end

      render :json => @data.to_json
  end

  def destroy
    @user = User.find(params[:id])
    @user.authentication_token = nil
    @user.save

    @data = {
      :status => "success"
    }

    render :json => @data.to_json
  end
end





