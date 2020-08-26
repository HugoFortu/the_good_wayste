class ProductsController < ApplicationController
<<<<<<< HEAD

  def show
    barcode = "3564700661420"
    @product = Product.from_barcode(barcode)

    redirect_to new_product_component_path(@product) unless @product.clean?
  end
=======
  skip_before_action :verify_authenticity_token, only: [:barcode]
>>>>>>> ba0af36... http request ok

  def scan
  end

  def barcode
    @barcode = params[:val_barcode]
  end
end
