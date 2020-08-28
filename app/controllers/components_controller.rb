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

    if @component.save
      redirect_to new_product_component_path(@product) ,notice: "Le composant est bien créé"
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
