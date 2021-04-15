class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
  before_action :set_sidebar, except: [:show]

  def index
    @properties = Property.all
  end

  def show
    @agent = @property.user
    @agent_properties = Property.where(user_id: @agent.id).where.not(id: @property.id)
  end
 
  def new
    @property = Property.new
  end
 
  def edit
  end

  def create
    @property = Property.new(property_params)
    @property.user_id = current_user.id

    respond_to do |format|
      if @property.save!
        format.html { redirect_to @property, notice: 'property was successfully created.'}
        format.json { render :show, status: :created, location: @property}
      else
        format.html {render :new}
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # trigger email send
  def email_agent
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    message = params[:message]

    format.json { head :no_content }
  end

  # response to script
  respond_to do |format|
    format.json { head :no_content }
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end
 
  def set_sidebar
    @show_sidebar = true
  end

  def property_params
    params.require(:property).permit(:name, :address, :price, :rooms, :bathrooms, :details, :parking_spaces, :photo, :photo_cache, :for_sale, :status, :available_date)
  end
end
