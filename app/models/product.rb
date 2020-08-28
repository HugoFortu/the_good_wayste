class Product < ApplicationRecord
  after_save :set_clean_status
  has_many :components
  has_many :materials, through: :components


  def self.from_barcode(barcode)
    Product.find_by(barcode: barcode) || create_product_from(barcode)
    end

  def self.create_product_from(barcode)
    off_data = Openfoodfacts::Product.get(barcode, locale: 'fr')

    return nil unless off_data

    product = Product.new(
      name: off_data.product_name_fr,
      barcode: off_data.code,
      brand: off_data.brands
    )
    product.save!
    product
  end

  private

  def set_clean_status
    off_data = Openfoodfacts::Product.get(barcode, locale: 'fr')
    materials = off_data.packaging.split(',').map(&:parameterize)
    data_check = []
    materials.each do |material|
      Material.find_by(slug: material).nil? ? data_check << false : data_check << true
    end
    if data_check.include?(false)
      update_columns(clean: false)
    else
      create_product_components(materials)
      update_columns(clean: true)
    end
  end

  def create_product_components(materials)
    materials.each do |material|
      c = Component.new(
        name: 'Composant',
        product_id: self.id,
        material_id: Material.find_by(slug: material).id
      )
      c.save
    end
  end
end
