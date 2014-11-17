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
    if cookies[:create_flag] == 'true'
      @new_user_record = UserRecord.new
      @new_user_record.user_id = @user.id
      @new_user_record.mile = cookies[:mile]
      @new_user_record.purchasing_date = cookies[:purchasing_date]
      @new_user_record.auto_model_id = cookies[:auto_model_id]
      if user_record_is_empty? @new_user_record
        if @new_user_record.save
          printf "save new user record success"
        else
          printf "save new user record error"
          return
        end
      end
    end
    @user_records = @user.user_records
    #@user_records.each do | user_record |
      #current_model = user_record.auto_model.id
      #mile = user_record.mile
      #purchasing_date = (user_record.purchasing_date - Date.today).to_i
      #logger.debug mile.to_s
      #logger.debug purchasing_date.to_s
      #mile_step = get_step_from_mile mile
      #date_step = get_step_from_date purchasing_date
      #step = (mile_step > date_step) ? mile_step : date_step
      #service_items = ServiceItem.where("auto_model_id = :auto_model_id AND step = :step",
      #  auto_model_id: current_model, step: step)
      #time_service_item = ServiceItem.where("auto_model_id = :auto_model_id AND purchasing_date > :duration1 AND purchasing_date < :duration2",
      #  auto_model_id: current_model, duration1: user_record.duration1, duration2: user_record.duration2)
      #mile_service_item = ServiceItem.where("auto_model_id = :auto_model_id AND mile > :mile",
      #  auto_model_id: current_model, mile: mile)

    #end
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
      cookies[:create_flag] = "true"
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
      if params[:id]
        @user_record = UserRecord.find(params[:id])
      else
        @user_records = current_user.user_records
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_record_params
      params.require(:user_record).permit(:user_id, :auto_model_id, :purchasing_date, :mile)
    end



  def user_record_is_empty? (user_record)
    relation = UserRecord.where("auto_model_id = :auto_model_id AND user_id = :user_id", {auto_model_id: user_record.auto_model_id, user_id:user_record.user_id})
    relation.empty?
  end

end
