class Place < ApplicationRecord
  has_many :garbadges
  geocoded_by :name
end
