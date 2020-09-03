# frozen_string_literal: true

class Place < ApplicationRecord
  has_many :garbages
  has_many :maps
  geocoded_by :name

  after_validation :geocode

  def self.find_by_name_without_case(city)
    where('LOWER(name) = LOWER(?)', city).limit(1).first
  end
end
