class Admin::UsersController < ApplicationController
  
  layout "admin"
  before_filter :require_admin

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @products = @user.products
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
end
