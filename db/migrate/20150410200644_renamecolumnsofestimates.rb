class Renamecolumnsofestimates < ActiveRecord::Migration
  def change
  	rename_column :estimates, :customer_id_id, :customer_id
  	rename_column :estimates, :vehicle_id_id, :vehicle_id
  	rename_column :estimates, :employee_id_id, :employee_id
  	rename_index :estimates, :index_estimates_on_customer_id_id, :index_estimates_on_customer_id
  	rename_index :estimates, :index_estimates_on_vehicle_id_id, :index_estimates_on_vehicle_id
  	rename_index :estimates, :index_estimates_on_employee_id_id, :index_estimates_on_employee_id
  end
end
