class ServiceItemProductAutoModelShipsController < ApplicationController
  before_action :set_service_item_product_auto_model_ship, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_item_product_auto_model_ships = ServiceItemProductAutoModelShip.all
    respond_with(@service_item_product_auto_model_ships)
  end

  def show
    respond_with(@service_item_product_auto_model_ship)
  end

  def new
    @service_item_product_auto_model_ship = ServiceItemProductAutoModelShip.new
    respond_with(@service_item_product_auto_model_ship)
  end

  def edit
  end

  def create
    @service_item_product_auto_model_ship = ServiceItemProductAutoModelShip.new(service_item_product_auto_model_ship_params)
    @service_item_product_auto_model_ship.save
    respond_with(@service_item_product_auto_model_ship)
  end

  def update
    @service_item_product_auto_model_ship.update(service_item_product_auto_model_ship_params)
    respond_with(@service_item_product_auto_model_ship)
  end

  def destroy
    @service_item_product_auto_model_ship.destroy
    respond_with(@service_item_product_auto_model_ship)
  end

  private
    def set_service_item_product_auto_model_ship
      @service_item_product_auto_model_ship = ServiceItemProductAutoModelShip.find(params[:id])
    end

    def service_item_product_auto_model_ship_params
      params.require(:service_item_product_auto_model_ship).permit(:service_item_product_id, :auto_model_id)
    end
end
