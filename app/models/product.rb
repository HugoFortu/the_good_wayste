class Product < ApplicationRecord
  before_save :set_clean_status

  def self.from_barcode(barcode)
    Product.find_by(barcode: barcode) || create_product_from(barcode)
  end

  def self.create_product_from(barcode)
    off_data = Openfoodfacts::Product.get(barcode, locale: 'fr')
    product = Product.new(
      name: off_data.product_name_fr,
      barcode: off_data.code,
      brand: off_data.brands
      # off: off_data
    )
    product.save!
  end

  def clean?
    self.clean
  end

  private

  def set_clean_status
    off_data = Openfoodfacts::Product.get(barcode, locale: 'fr')
    materials = off_data.packaging.split(',').map(&:parameterize)
    #.length ?
    # materials = self.off['packaging'].split(',').map(&:parameterize)
    data_check = []
    materials.each do |material|
      Material.find_by(slug: material).nil? ? data_check << false : data_check << true
    end
    if data_check.include?(false)
      self.clean = false
    else
      puts "je suis dans set_clean_status"
      puts "id -produit : #{@product.id}"
      create_product_components(materials)
      self.clean = true
    end
  end

  def create_product_components(materials)
    puts "Je suis dans create_product_components "
    puts "id -produit : #{self.id}"
    puts '------------------------------------'
    materials.each do |material|
      puts "je suis dans l'itération"
      c = Component.new(
        name: 'Un composant',
        product_id: self.id,
        material_id: Material.find_by(slug: material).id
      )
      c.save
      ap c
      puts "je sors de la méthode"
    end
  end
end
