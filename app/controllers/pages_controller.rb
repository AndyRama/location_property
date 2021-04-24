class PagesController < ApplicationController
  before_action :authenticate_user!, only: %i[home]

  def home
  end

  def avertise
  end

  def for_sale
    @properties = Property.where(for_sale: true)
  end

  def feature
    @properties = Property.latest
  end

  def compte
  # @user = User.id
  end

  def contact
  end
end

