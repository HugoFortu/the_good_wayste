class ProductsController < ApplicationController


  def show
    barcode = "3263850365416"
    @product = Product.from_barcode(barcode)

    redirect_to new_product_component_path(@product) unless @product.clean?
  end

  def scan

  end

end
