class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string	:manufacturer
      t.string	:year
      t.string	:model
      t.string	:trim
      t.references :customer, index: true
    
      t.timestamps null: false
    end
  end
end
