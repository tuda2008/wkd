class CustomizesController < ApplicationController
  def index
    @products = CustomizeProduct.visible.page(params[:page]).per(12)
    render layout: false
  end

  def show
    @product = CustomizeProduct.find(params[:id])
    if @product
  	  @hot_products = CustomizeProduct.visible.not([@product.id]).limit(3)
  	else
  	  @hot_products = CustomizeProduct.visible.limit(3)
  	end
    render layout: false
  end
end