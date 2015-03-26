class AddingCorrectRefFromVehicleCustomers < ActiveRecord::Migration
  def change
  	add_reference :vehicles, :customer, index: true
  end
end
