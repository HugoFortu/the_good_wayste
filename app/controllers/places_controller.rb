class PlacesController < ApplicationController
  def map
    @place = Place.find_by_name_without_case(cookies[:city])
    @map = Map.find_by(place_id: @place.id)

    @markers = @place.maps.map do |map|
      map.containers.map do |container|
        container.slice(:longitude, :latitude).merge(type: map.name)
      end
    end.flatten
    ap @markers
  end
end

