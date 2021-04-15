class DashboardController < ApplicationController
  before_action :set_sidebar, except: [:show]

  def index
  end

  def profile
    @user = User.find(params[:id])
    @properties = Property.where(user_id: @user.id)

    @properties_sold = Property.where(user_id: @user.id).sold
    @properties_for_sale = Property.where(user_id: @user.id).for_sale
    @properties_leased = Property.where(user_id: @user.id).leased
    @properties_for_rent = Property.where(user_id: @user.id).for_rent
  end

  private

  def set_sidebar
    @show_sidebar = true if user_signed_in?
  end
end
