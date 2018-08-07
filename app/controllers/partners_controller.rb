class PartnersController < ApplicationController
  def index
    @partners = Partner.visible.page(params[:page]).per(15)
    render layout: false
  end
end