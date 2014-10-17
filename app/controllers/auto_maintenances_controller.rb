class AutoMaintenancesController < ApplicationController
  before_action :set_auto_maintenance, only: [:show, :edit, :update, :destroy]

  # GET /auto_maintenances
  # GET /auto_maintenances.json
  def index
    @auto_brands = AutoBrand.all
  end

  # GET /auto_maintenances/1
  # GET /auto_maintenances/1.json
  def show
  end

  # GET /auto_maintenances/new
  def new
    @auto_maintenance = AutoMaintenance.new
  end

  # GET /auto_maintenances/1/edit
  def edit
  end

  # POST /auto_maintenances
  # POST /auto_maintenances.json
  def create

  end

  # PATCH/PUT /auto_maintenances/1
  # PATCH/PUT /auto_maintenances/1.json
  def update

  end

  # DELETE /auto_maintenances/1
  # DELETE /auto_maintenances/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_maintenance
      @auto_maintenance = AutoMaintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_maintenance_params
      params[:auto_maintenance]
    end
end
