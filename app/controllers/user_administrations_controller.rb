class UserAdministrationsController < ApplicationController
  before_action :set_user_administration, only: [:show, :edit, :update, :destroy]

  # GET /user_administrations
  # GET /user_administrations.json
  def index
    @users = User.all
  end

  # GET /user_administrations/1
  # GET /user_administrations/1.json
  def show
  end

  # GET /user_administrations/new
  def new
    @user_administration = UserAdministration.new
  end

  # GET /user_administrations/1/edit
  def edit
  end

  # POST /user_administrations
  # POST /user_administrations.json
  def create
    @user_administration = UserAdministration.new(user_administration_params)

    respond_to do |format|
      if @user_administration.save
        format.html { redirect_to @user_administration, notice: 'User administration was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_administration }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_administration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_administrations/1
  # PATCH/PUT /user_administrations/1.json
  def update
    respond_to do |format|
      if @user_administration.update(user_administration_params)
        format.html { redirect_to @user_administration, notice: 'User administration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_administration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_administrations/1
  # DELETE /user_administrations/1.json
  def destroy
    @user_administration.destroy
    respond_to do |format|
      format.html { redirect_to user_administrations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_administration
      @user_administration = UserAdministration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_administration_params
      params[:user_administration]
    end
end
