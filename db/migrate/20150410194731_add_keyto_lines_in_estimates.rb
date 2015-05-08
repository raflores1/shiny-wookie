class AddKeytoLinesInEstimates < ActiveRecord::Migration
  def change
  	add_column :lines_in_estimates, :estimate_id, :integer
  end
end
