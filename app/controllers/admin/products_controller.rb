class Admin::ProductsController < ApplicationController
  
  layout "admin"
  before_filter :require_admin

  def index
    @products = Product.all
  end
  
  def show
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
