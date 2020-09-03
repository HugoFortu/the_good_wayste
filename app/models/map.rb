class Map < ApplicationRecord
  belongs_to :place
  has_many :containers
end
