class PublicController < ApplicationController
  def main
    if user_signed_in?
      path = current_user.admin? ? user_path : properties_path      
    end
    
    @properties = Property.last
  
  end
end