class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:barcode]

  def show
    @product = Product.find(params[:id])
    @city = Place.find_by_name_without_case(cookies[:city])

    @markers = Map.where(name: @product.materials.pluck(:name), place: @city).map do |map|
      map.containers.map do |container|
        container.slice(:longitude, :latitude).merge(type: map.name)
      end
    end.flatten

  end

  def scan
  end

  def barcode
    @barcode = params[:val_barcode]
    @product = Product.from_barcode(@barcode)

    if @product == nil
      redirect_to scan_path, notice: "Try again"
    elsif @product.clean
      redirect_to product_path(@product)
    else
      redirect_to new_product_component_path(@product)
    end
  end
end
