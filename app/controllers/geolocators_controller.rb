class GeolocatorsController < ApplicationController

  def create
    @longitude = params[:longitude]
    @latitude = params[:latitude]

    respond_to do |format|
      format.js { }
    end
  end

  def get_longitude
    return @longitude
  end

  def get_latitude
    return @latitude
  end

end
