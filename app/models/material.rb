class Material < ApplicationRecord
  has_many :components
  has_many :products, through: :components
end
