class PlacesController < ApplicationController
  def map
    @place = Place.find_by_name_without_case(cookies[:city])
    @map = Map.find_by(place_id: @place.id)
  end
end
