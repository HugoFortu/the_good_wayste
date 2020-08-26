class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:barcode]

  def show
  end

  def scan
  end

  def barcode
    @barcode = params[:val_barcode]
    @product = Product.from_barcode(@barcode)
    if @product.clean
      redirect_to product_path(@product)
    else
      redirect_to new_product_component_path(@product)
    end
  end
end
