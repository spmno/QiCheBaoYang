class MainPagesController < ApplicationController
  before_action :set_main_page, only: [:show, :edit, :update, :destroy]

  # GET /main_pages
  # GET /main_pages.json
  def index
    @main_pages = MainPage.all
  end

  # GET /main_pages/1
  # GET /main_pages/1.json
  def show
  end

  # GET /main_pages/new
  def new
    @main_page = MainPage.new
  end

  # GET /main_pages/1/edit
  def edit
  end

  # POST /main_pages
  # POST /main_pages.json
  def create
    @main_page = MainPage.new(main_page_params)

    respond_to do |format|
      if @main_page.save
        format.html { redirect_to @main_page, notice: 'Main page was successfully created.' }
        format.json { render :show, status: :created, location: @main_page }
      else
        format.html { render :new }
        format.json { render json: @main_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_pages/1
  # PATCH/PUT /main_pages/1.json
  def update
    respond_to do |format|
      if @main_page.update(main_page_params)
        format.html { redirect_to @main_page, notice: 'Main page was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_page }
      else
        format.html { render :edit }
        format.json { render json: @main_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_pages/1
  # DELETE /main_pages/1.json
  def destroy
    @main_page.destroy
    respond_to do |format|
      format.html { redirect_to main_pages_url, notice: 'Main page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_page
      @main_page = MainPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_page_params
      params[:main_page]
    end
end
