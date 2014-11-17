class CustomerServiceItemShipsController < ApplicationController
  before_action :set_customer_service_item_ship, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customer_service_item_ships = CustomerServiceItemShip.all
    respond_with(@customer_service_item_ships)
  end

  def show
    respond_with(@customer_service_item_ship)
  end

  def new
    @customer_service_item_ship = CustomerServiceItemShip.new
    respond_with(@customer_service_item_ship)
  end

  def edit
  end

  def create
    @customer_service_item_ship = CustomerServiceItemShip.new(customer_service_item_ship_params)
    @customer_service_item_ship.save
    respond_with(@customer_service_item_ship)
  end

  def update
    @customer_service_item_ship.update(customer_service_item_ship_params)
    respond_with(@customer_service_item_ship)
  end

  def destroy
    @customer_service_item_ship.destroy
    respond_with(@customer_service_item_ship)
  end

  private
    def set_customer_service_item_ship
      @customer_service_item_ship = CustomerServiceItemShip.find(params[:id])
    end

    def customer_service_item_ship_params
      params.require(:customer_service_item_ship).permit(:customer_id, :service_item_id)
    end
end
