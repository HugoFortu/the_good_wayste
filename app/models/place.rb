# frozen_string_literal: true

class Place < ApplicationRecord
  has_many :garbages

  def self.find_by_name_without_case(city)
    where('LOWER(name) = LOWER(?)', city).limit(1).first
  end
end
