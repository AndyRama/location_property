class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home main]

  def home
  end

  def main
  end
end
