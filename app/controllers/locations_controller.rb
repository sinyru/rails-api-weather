class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  def create
    @location = Location.create(location_params)
    if @location.save
      render json: @location, status: :created
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  def index
    render json: Location.all
  end

  def show
    render json: @location
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_location
    @location = Location.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def location_params
    params.require(:location).permit(:street, :city, :state, :zip, :country)
  end

  private :set_location, :location_params
end
