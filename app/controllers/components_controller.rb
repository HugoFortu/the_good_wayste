class ComponentsController < ApplicationController


  def new
    @product = Product.find(params[:product_id])
    @component = Component.new
  end
end
