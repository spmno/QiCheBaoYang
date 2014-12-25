class ServiceStationAdministratorServiceStationShipsController < ApplicationController
  before_action :set_service_station_administrator_service_station_ship, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_station_administrator_service_station_ships = ServiceStationAdministratorServiceStationShip.all
    respond_with(@service_station_administrator_service_station_ships)
  end

  def show
    respond_with(@service_station_administrator_service_station_ship)
  end

  def new
    @service_station_administrator_service_station_ship = ServiceStationAdministratorServiceStationShip.new
    respond_with(@service_station_administrator_service_station_ship)
  end

  def edit
  end

  def create
    @service_station_administrator_service_station_ship = ServiceStationAdministratorServiceStationShip.new(service_station_administrator_service_station_ship_params)
    @service_station_administrator_service_station_ship.save
    respond_with(@service_station_administrator_service_station_ship)
  end

  def update
    @service_station_administrator_service_station_ship.update(service_station_administrator_service_station_ship_params)
    respond_with(@service_station_administrator_service_station_ship)
  end

  def destroy
    @service_station_administrator_service_station_ship.destroy
    respond_with(@service_station_administrator_service_station_ship)
  end

  private
    def set_service_station_administrator_service_station_ship
      @service_station_administrator_service_station_ship = ServiceStationAdministratorServiceStationShip.find(params[:id])
    end

    def service_station_administrator_service_station_ship_params
      params.require(:service_station_administrator_service_station_ship).permit(:service_station_administrator_id, :service_station_id)
    end
end
