class CarMaintenanceInfosController < ApplicationController
  before_action :set_car_maintenance_info, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @car_maintenance_infos = CarMaintenanceInfo.page(params[:page])
    respond_with(@car_maintenance_infos)
  end

  def show
    respond_with(@car_maintenance_info)
  end

  def new
    @car_maintenance_info = CarMaintenanceInfo.new
    respond_with(@car_maintenance_info)
  end

  def edit
  end

  def create
    @car_maintenance_info = CarMaintenanceInfo.new(car_maintenance_info_params)
    @car_maintenance_info.save
    respond_with(@car_maintenance_info)
  end

  def update
    @car_maintenance_info.update(car_maintenance_info_params)
    respond_with(@car_maintenance_info)
  end

  def destroy
    @car_maintenance_info.destroy
    respond_with(@car_maintenance_info)
  end

  private
    def set_car_maintenance_info
      @car_maintenance_info = CarMaintenanceInfo.find(params[:id])
    end

    def car_maintenance_info_params
      params.require(:car_maintenance_info).permit(:title, :content)
    end
end
