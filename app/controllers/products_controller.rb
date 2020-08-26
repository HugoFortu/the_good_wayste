class ProductsController < ApplicationController

  def show
    barcode = "3564700661420"
    @product = Product.from_barcode(barcode)

    if @product.clean?
      redirect_to product_path(@product)
    else
      redirect_to new_product_component_path(@product)
    end
  end

end


