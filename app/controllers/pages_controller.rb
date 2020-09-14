class PagesController < ApplicationController
  def home
    @place = Place.find_by_name_without_case(cookies[:city])

    if @place.blank?
      @place = Place.find_by(name: "Lyon")
      cookies[:city] = "Lyon"
      flash.alert = "Désolé, votre ville n'est pas encore référencée.."
    end
  end

  def position
  end
end
