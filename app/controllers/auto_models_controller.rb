class AutoModelsController < ApplicationController
  before_action :set_auto_model, only: [:show, :edit, :update, :destroy]

  # GET /auto_models
  # GET /auto_models.json
  def index
    @auto_models = AutoModel.all
  end

  # GET /auto_models/1
  # GET /auto_models/1.json
  def show
  end

  # GET /auto_models/new
  def new
    @auto_brands = AutoBrand.all
    @auto_model = AutoModel.new
  end

  # GET /auto_models/1/edit
  def edit
    @auto_brands = AutoBrand.all
  end

  # POST /auto_models
  # POST /auto_models.json
  def create
    @auto_model = AutoModel.new(auto_model_params)

    respond_to do |format|
      if @auto_model.save
        format.html { redirect_to @auto_model, notice: 'Auto model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @auto_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @auto_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_models/1
  # PATCH/PUT /auto_models/1.json
  def update
    respond_to do |format|
      if @auto_model.update(auto_model_params)
        format.html { redirect_to @auto_model, notice: 'Auto model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @auto_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_models/1
  # DELETE /auto_models/1.json
  def destroy
    @auto_model.destroy
    respond_to do |format|
      format.html { redirect_to auto_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_model
      @auto_model = AutoModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_model_params
      params.require(:auto_model).permit(:name, :auto_model_photo, :auto_brand_id)
    end
end
