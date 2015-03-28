class VehiclesController < ApplicationController
 
 before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
	

	def index
    	@vehicles = Vehicle.find(params[:customer_id])
	end

	def show
	end

	def new
    	@vehicle = Vehicle.new
  	end

  	def edit
  	end

  	def create
    	@vehicle = Vehicle.new(vehicle_params)

    	respond_to do |format|
     	 if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
     	 else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      	end
    	end
  	end

	def update
    	respond_to do |format|
      		if @vehicle.update(vehicle_params)
       			format.html { redirect_to @vehicle, notice: 'Customer was successfully updated.' }
        		format.json { render :show, status: :ok, location: @vehicle }
      		else
        		format.html { render :edit }
        		format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      		end
    	end
  	end

	def destroy
    	@vehicle.destroy
    	respond_to do |format|
      		format.html { redirect_to vehicles_url, notice: 'Customer was successfully destroyed.' }
      		format.json { head :no_content }
    	end
  	end
end







private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:customer_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:vin, :manufacturer, :year, :model, :trim, :customer_id)
    end