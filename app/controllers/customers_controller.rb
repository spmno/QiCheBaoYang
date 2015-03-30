class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    if params[:service_station_id]
      @service_station = ServiceStation.find(params[:service_station_id])
      @customers = @service_station.customers
    else
      @customers = Customer.all
    end
    respond_with(@customers)
  end

  def show
    respond_with(@customer)
  end

  def new
    @customer = Customer.new
    respond_with(@customer)
  end

  def edit
  end

  def create
    if params[:service_station_id]
      @customer = Customer.new(customer_params)
      @customer.save
    else
      @customer = Customer.new(customer_params)
      @customer.save
    end

    respond_with(@customer)
  end

  def update
    @customer.update(customer_params)
    respond_with(@customer)
  end

  def destroy
    @customer.destroy
    respond_with(@customer)
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:user_id, :amount, :user_point)
    end
end
