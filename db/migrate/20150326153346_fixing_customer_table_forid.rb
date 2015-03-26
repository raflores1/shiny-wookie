class FixingCustomerTableForid < ActiveRecord::Migration
  def change
  	remove_column :customers, :cust_id
  	remove_column	:customers, :_id
  end
end
