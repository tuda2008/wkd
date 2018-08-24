class ProductsController < ApplicationController

  def index
    @products = Product.visible.page(params[:page]).per(10)
    @carousels = []
    home_carousels = Carousel.visible.home.limit(1)
    unless home_carousels.empty?
      @carousels = home_carousels[0].images
    end

    respond_to do |format|
      format.html
      format.json
    end

    render layout: false
  end

  def show
    @product = Product.find(params[:id])
    if @product
  	  @hot_products = Product.visible.not([@product.id]).limit(3)
  	else
  	  @hot_products = Product.visible.limit(3)
  	end

    respond_to do |format|
      format.html
      format.json
    end
    
    render layout: false
  end
end