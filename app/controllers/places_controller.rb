class PlacesController < ApplicationController
  def map
    @place = Place.find(params[:id])
  end
end
