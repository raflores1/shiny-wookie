class VehiclesController < ApplicationController

  before_action :find_customer
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  def index
    @vehicles = @customer.vehicles
  end

  def show
  end

  def new
    @vehicle = @customer.vehicles.new
  end

  def edit
  end

  def create
    @vehicle = @customer.vehicles.new(vehicle_params)

    if @vehicle.save
      redirect_to customer_vehicles_path, notice: 'Vehicle was successfully created.'
    else
      render :new
    end
  end

  def update
    if @vehicle.update(vehicle_params)
      redirect_to customer_vehicles_path, notice: 'Vehicle was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to customer_vehicles_path, notice: 'Vehicle was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vehicle
    @vehicle = @customer.vehicles.find(params[:id])
  end

  def find_customer
    @customer = Customer.find(params[:customer_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vehicle_params
    params.require(:vehicle).permit(:vin, :manufacturer, :year, :model, :trim)
  end
end
