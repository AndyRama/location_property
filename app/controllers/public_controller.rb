class PublicController < ApplicationController
  def main
    if user_signed_in?
      # path = current_user.admin? ? user_path : properties_path      
      redirect_to dashboard_path, flash: { success: " Successfully signed in. Welcome to Location Property " }
    end
    
    @properties = Property.latest
  
  end
end