class AddingRefToEstimates < ActiveRecord::Migration
  def change
  	add_column :estimates, :customer_id, :integer
	add_column :estimates, :vehicle_id, :integer
	add_column :estimates, :employee_id, :integer
	add_index :estimates, :customer_id
	add_index :estimates, :vehicle_id
	add_index :estimates, :employee_id
  end
end
