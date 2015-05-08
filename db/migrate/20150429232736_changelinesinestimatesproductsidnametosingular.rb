class Changelinesinestimatesproductsidnametosingular < ActiveRecord::Migration
  def change
  	rename_column(:lines_in_estimates, :products_id, :product_id)
  end
end
