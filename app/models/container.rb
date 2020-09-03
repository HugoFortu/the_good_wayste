class Container < ApplicationRecord
  belongs_to :map
  geocoded_by :address


  after_validation :geocode
end
