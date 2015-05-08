class LinesInEstimate < ActiveRecord::Base
	belongs_to :estimate
	belongs_to	:product

	include Totals

	before_save :calculate_results

	after_save :sum_extended

	after_destroy :sum_extended


	def calculate_results
		self.extended = self.qty * self.product.price
	end

	def sum_extended
		subtotal = LinesInEstimate.where(estimate_id: estimate_id).sum(:extended)
		totals(estimate_id, subtotal)
	end
end
