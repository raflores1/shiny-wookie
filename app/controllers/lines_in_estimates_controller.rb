class LinesInEstimatesController < ApplicationController
	before_action :find_estimate
	before_action :set_lines_in_estimate, only: [:show, :edit, :update, :destroy]


	def index
		@lines_in_estimates = @estimate.lines_in_estimates
	end

	def new
		@lines_in_estimate = @estimate.lines_in_estimates.new
	end

  def show
  end


def create


    @lines_in_estimate = @estimate.lines_in_estimates.new(lines_in_estimate_params)



    if @lines_in_estimate.save
      redirect_to estimate_lines_in_estimates_path, notice: 'Line was successfully created.'
    else
      render :new
    end
  end

  def update
    if @lines_in_estimate.update(lines_in_estimate_params)
      redirect_to estimate_lines_in_estimates_path, notice: 'Line was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @lines_in_estimate.destroy
    redirect_to estimate_lines_in_estimates_path, notice: 'Line was successfully deleted.'
  end

private

def set_lines_in_estimate
  @lines_in_estimate = @estimate.lines_in_estimates.find(params[:id])
end

def find_estimate
    @estimate = Estimate.find(params[:estimate_id])
end

def lines_in_estimate_params
          params.require(:lines_in_estimate).permit(:qty, :extended,:product_id, :estimate_id, :id)
end
end