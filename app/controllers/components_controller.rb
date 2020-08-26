class ComponentsController < ApplicationController
  def new
    @product = Product.find(params[:id])
    @component = Component.new
  end
end
