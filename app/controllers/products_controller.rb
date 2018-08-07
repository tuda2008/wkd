class ProductsController < ApplicationController

  def index
    @products = Product.visible.page(params[:page]).per(10)
    render layout: false
  end

  def show
    @product = Product.find(params[:id])
    if @product
  	  @hot_products = Product.visible.not([@product.id]).limit(3)
  	else
  	  @hot_products = Product.visible.limit(3)
  	end
    render layout: false
  end
end