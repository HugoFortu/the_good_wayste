class ComponentsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @component = Component.new
  end

  def create
    @component = Component.new(components_params)
    @product = Product.find(params[:product_id])
    # @material = Material.find(params[:material_id])
    # @components.product = @product
    # @component.material = @material
    # passer en force et changer le statut clean du produit
    if @component.save
      @product.update_columns(clean: true)
      redirect_to new_product_component_path(@product)
    else
      redirect_to new_product_component_path(@product) ,notice: "Merci de recommencer"
    end
  end

  private

  def components_params
    params
      .require(:component)
      .permit(:name, :material_id)
      .merge(product_id: params[:product_id])
  end
end
