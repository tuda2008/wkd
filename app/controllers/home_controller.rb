class HomeController < ApplicationController
  def index
    @products = Product.visible.limit(6)
    @customizes = CustomizeProduct.visible.limit(4)
    @partners = Partner.visible.limit(3)
    @carousels = []
    home_carousels = Carousel.visible.home.limit(1)
    unless home_carousels.empty?
      @carousels = home_carousels[0].images
    end

    render layout: false
  end

  def about
    render layout: false
  end

  def contact
    render layout: false
  end

  def jobs
    render layout: false
  end

  def order
    render layout: false
  end

  def service
    render layout: false
  end
end