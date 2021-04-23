class PagesController < ApplicationController
  before_action :authenticate_user!, only: %i[home]

  def home
  end
  
  def avertise
  end

  def for_rent
  end

  def for_sale
  end
end
