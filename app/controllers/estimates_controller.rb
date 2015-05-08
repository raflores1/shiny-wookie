class EstimatesController < ApplicationController
	before_action :set_estimate, only:[:show, :edit, :update, :destroy]

	
	def index
		@estimates = Estimate.all
    @customers = Customer.all
	end

	def show
	end

	def new
		@estimate = Estimate.new
	end

  def edit
  end

	def create
    @estimate = Estimate.new(estimate_params)

    respond_to do |format|
      if @estimate.save
        format.html { redirect_to @estimate, notice: 'An Estimate was initiated successfully . please add items' }
      else
        format.html { render :new }
      end
    end
  end

def update
    respond_to do |format|
      if @estimate.update(estimate_params)
        format.html { redirect_to @estimate, notice: 'Estimate was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @estimate.destroy
      respond_to do |format|
        format.html { redirect_to estimates_url, notice: 'Estimate was successfully deleted.' }
      end
  end

	private

		def set_estimate 
			@estimate = Estimate.find(params[:id])
		end

		def estimate_params
      		params.require(:estimate).permit(:statetax, :muntax, :subtotal, :total, :created_at, :updated_at, 
      										:customer_id, :vehicle_id, :employee_id,) 

                      # lines_in_estimates_attributes: [:id, :qty, :description, :extended, :estimate_id, :products_id])
		end

    
		

end