class ToAddProductidToLinesinEstimates < ActiveRecord::Migration
  def change
  	add_reference :lines_in_estimates, :products, index: true
  end
end
