class FixingVehiclesTableForid < ActiveRecord::Migration
  def change
  	remove_column :vehicles, :cust_id_id
  end
end
