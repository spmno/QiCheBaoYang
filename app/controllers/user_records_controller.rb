class UserRecordsController < ApplicationController
  before_action :set_user_record, only: [:show, :edit, :update, :destroy]

  # GET /user_records
  # GET /user_records.json
  def index
    @user_records = UserRecord.all
  end

  def update_auto_models
    @auto_models = AutoModel.where(auto_brand_id: params[:auto_brand_id])
  end

  # GET /user_records/1
  # GET /user_records/1.json
  def show
    @user = User.find(params[:user_id])
    @user_records = user.user_records
    @user_records.each do | user_record |
      current_model = user_record.model.id
      mile = user_record.mile
      purchasing_date = (user_record.purchasing_data - Date.today).to_i
      time_service_item = ServiceItem.where("auto_model_id = :auto_model_id AND purchasing_date > :duration1 AND purchasing_date < :duration2",
        auto_model_id: current_model, duration1: user_record.duration1, duration2: user_record.duration2)
      mile_service_item = ServiceItem.where("auto_model_id = :auto_model_id AND mile > :mile",
        auto_model_id: current_model, mile: mile)
    end
  end

  # GET /user_records/new
  def new
    @user_record = UserRecord.new
    @is_signed_in = false
    if user_signed_in?
      @user_record.user_id = current_user.id
    end
  end

  # GET /user_records/1/edit
  def edit
  end

  # POST /user_records
  # POST /user_records.json
  def create
    @user_record = UserRecord.new(user_record_params)

    if !user_signed_in?
      cookies[:auto_model_id] = params[:user_record][:auto_model_id]
      cookies[:purchasing_date] = params[:user_record][:purchasing_date]
      cookies[:mile] = params[:user_record][:mile]
      #session[:return_to] = user_record_url
      return redirect_to new_user_session_path
    else
      @user_record.user_id = current_user.id
    end
    respond_to do |format|
      if @user_record.save
        format.html { redirect_to @user_record, notice: 'User record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_records/1
  # PATCH/PUT /user_records/1.json
  def update
    respond_to do |format|
      if @user_record.update(user_record_params)
        format.html { redirect_to @user_record, notice: 'User record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_records/1
  # DELETE /user_records/1.json
  def destroy
    @user_record.destroy
    respond_to do |format|
      format.html { redirect_to user_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_record
      @user_record = UserRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_record_params
      params.require(:user_record).permit(:user_id, :auto_model_id, :purchasing_date, :mile)
    end
end
