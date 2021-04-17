class PublicController < ApplicationController
  def main
    if user_signed_in?
      path = current_user.admin? ? users_path : dashboard_path
      redirect_to path, flash: { success: "Successfully signed in. Welcome to Location Property" } and return
    end

    @properties = Property.latest
    @posts = Post.latest
  end
end
