class ServiceStationAdministratorsController < ApplicationController
  before_action :set_service_station_administrator, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_station_administrators = ServiceStationAdministrator.all
    respond_with(@service_station_administrators)
  end

  def show
    respond_with(@service_station_administrator)
  end

  def new
    @service_station_administrator = ServiceStationAdministrator.new
    respond_with(@service_station_administrator)
  end

  def edit
  end

  def create
    @service_station_administrator = ServiceStationAdministrator.new(service_station_administrator_params)
    @service_station_administrator.save
    respond_with(@service_station_administrator)
  end

  def update
    @service_station_administrator.update(service_station_administrator_params)
    respond_with(@service_station_administrator)
  end

  def destroy
    @service_station_administrator.destroy
    respond_with(@service_station_administrator)
  end

  private
    def set_service_station_administrator
      @service_station_administrator = ServiceStationAdministrator.find(params[:id])
    end

    def service_station_administrator_params
      params.require(:service_station_administrator).permit(:service_station_id, :user_id)
    end
end
