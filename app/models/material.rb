class Material < ApplicationRecord
  has_many :components
  has_many :products, through: :components

  before_save :set_slug

  private

  def set_slug
    self.slug = name.parameterize
  end
end
