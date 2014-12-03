class MaintenanceGoodsController < ApplicationController
  before_action :set_maintenance_good, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @maintenance_goods = MaintenanceGood.all
    respond_with(@maintenance_goods)
  end

  def show
    respond_with(@maintenance_good)
  end

  def new
    @maintenance_good = MaintenanceGood.new
    respond_with(@maintenance_good)
  end

  def edit
  end

  def create
    @maintenance_good = MaintenanceGood.new(maintenance_good_params)
    @maintenance_good.save
    respond_with(@maintenance_good)
  end

  def update
    @maintenance_good.update(maintenance_good_params)
    respond_with(@maintenance_good)
  end

  def destroy
    @maintenance_good.destroy
    respond_with(@maintenance_good)
  end

  private
    def set_maintenance_good
      @maintenance_good = MaintenanceGood.find(params[:id])
    end

    def maintenance_good_params
      params.require(:maintenance_good).permit(:name, :photo, :link)
    end
end
