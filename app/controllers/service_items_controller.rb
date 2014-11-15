class ServiceItemsController < ApplicationController
  before_action :set_service_item, only: [:show, :edit, :update, :destroy]

  # GET /service_items
  # GET /service_items.json
  def index
    @service_items = ServiceItem.all
  end

  def update_auto_models
    @auto_models = AutoModel.where(auto_brand_id: params[:auto_brand_id])
  end

  # GET /service_items/1
  # GET /service_items/1.json
  def show
  end

  # GET /service_items/new
  def new
    @service_item = ServiceItem.new
  end

  # GET /service_items/1/edit
  def edit
  end

  # POST /service_items
  # POST /service_items.json
  def create
    @service_item = ServiceItem.new(service_item_params)

    respond_to do |format|
      if @service_item.save
        format.html { redirect_to @service_item, notice: 'Service item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_items/1
  # PATCH/PUT /service_items/1.json
  def update
    respond_to do |format|
      if @service_item.update(service_item_params)
        format.html { redirect_to @service_item, notice: 'Service item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_items/1
  # DELETE /service_items/1.json
  def destroy
    @service_item.destroy
    respond_to do |format|
      format.html { redirect_to service_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_item
      @service_item = ServiceItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_item_params
      params.require(:service_item).permit(:name, :duration1, :duration2, :mile, :auto_model_id, :step)
    end
end
