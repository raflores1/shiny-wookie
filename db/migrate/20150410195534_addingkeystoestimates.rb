class Addingkeystoestimates < ActiveRecord::Migration
  def change
  	add_reference :estimates, :customer_id, index: true
  	add_reference :estimates, :vehicle_id, index: true
  	add_reference :estimates, :employee_id, index: true
  end
end
