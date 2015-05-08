class AddIndextoLinesinEstimates < ActiveRecord::Migration
  def change
  	add_index :lines_in_estimates, :estimate_id		
  end
end
