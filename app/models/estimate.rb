class Estimate < ActiveRecord::Base
	belongs_to :customer
	belongs_to :vehicle
	belongs_to	:employee
	has_many :lines_in_estimates, dependent: :destroy
	
	include Totals
	
	# accepts_nested_attributes_for :lines_in_estimates
 


	
end
