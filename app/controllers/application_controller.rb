class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_admin
    if !(user_signed_in? && current_user.admin?)
      redirect_to root_path
    end
  end
  
  
end
