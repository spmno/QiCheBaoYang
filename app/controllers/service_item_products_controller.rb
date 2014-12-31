class ServiceItemProductsController < ApplicationController
  before_action :set_service_item_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_item_products = ServiceItemProduct.all
    respond_with(@service_item_products)
  end

  def show
    respond_with(@service_item_product)
  end

  def new
    @service_item_product = ServiceItemProduct.new
    respond_with(@service_item_product)
  end

  def edit
  end

  def create
    @service_item_product = ServiceItemProduct.new(service_item_product_params)
    @service_item_product.save
    respond_with(@service_item_product)
  end

  def update
    @service_item_product.update(service_item_product_params)
    respond_with(@service_item_product)
  end

  def destroy
    @service_item_product.destroy
    respond_with(@service_item_product)
  end

  private
    def set_service_item_product
      @service_item_product = ServiceItemProduct.find(params[:id])
    end

    def service_item_product_params
      params.require(:service_item_product).permit(:name, :service_item_id)
    end
end
