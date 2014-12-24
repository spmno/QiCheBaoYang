class CustomerServiceStationShipsController < ApplicationController
  before_action :set_customer_service_station_ship, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customer_service_station_ships = CustomerServiceStationShip.all
    respond_with(@customer_service_station_ships)
  end

  def show
    respond_with(@customer_service_station_ship)
  end

  def new
    @customer_service_station_ship = CustomerServiceStationShip.new
    respond_with(@customer_service_station_ship)
  end

  def edit
  end

  def create
    @customer_service_station_ship = CustomerServiceStationShip.new(customer_service_station_ship_params)
    @customer_service_station_ship.save
    respond_with(@customer_service_station_ship)
  end

  def update
    @customer_service_station_ship.update(customer_service_station_ship_params)
    respond_with(@customer_service_station_ship)
  end

  def destroy
    @customer_service_station_ship.destroy
    respond_with(@customer_service_station_ship)
  end

  private
    def set_customer_service_station_ship
      @customer_service_station_ship = CustomerServiceStationShip.find(params[:id])
    end

    def customer_service_station_ship_params
      params.require(:customer_service_station_ship).permit(:customer_id, :service_station_id)
    end
end
