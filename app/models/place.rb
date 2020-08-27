class Place < ApplicationRecord
  has_many :garbages
  geocoded_by :name
end
