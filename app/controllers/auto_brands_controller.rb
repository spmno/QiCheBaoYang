class AutoBrandsController < ApplicationController
  before_action :set_auto_brand, only: [:show, :edit, :update, :destroy]

  # GET /auto_brands
  # GET /auto_brands.json
  def index
    @auto_brands = AutoBrand.all
  end

  # GET /auto_brands/1
  # GET /auto_brands/1.json
  def show
  end

  # GET /auto_brands/new
  def new
    @auto_brand = AutoBrand.new
  end

  # GET /auto_brands/1/edit
  def edit
  end

  # POST /auto_brands
  # POST /auto_brands.json
  def create
    @auto_brand = AutoBrand.new(auto_brand_params)

    respond_to do |format|
      if @auto_brand.save
        format.html { redirect_to @auto_brand, notice: 'Auto brand was successfully created.' }
        format.json { render action: 'show', status: :created, location: @auto_brand }
      else
        format.html { render action: 'new' }
        format.json { render json: @auto_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_brands/1
  # PATCH/PUT /auto_brands/1.json
  def update
    respond_to do |format|
      if @auto_brand.update(auto_brand_params)
        format.html { redirect_to @auto_brand, notice: 'Auto brand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @auto_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_brands/1
  # DELETE /auto_brands/1.json
  def destroy
    @auto_brand.destroy
    respond_to do |format|
      format.html { redirect_to auto_brands_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_brand
      @auto_brand = AutoBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_brand_params
      params.require(:auto_brand).permit(:name, :auto_brand_photo)
    end
end
