class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :cust_id
      t.string :first_name
      t.string :last_name
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :h_phone
      t.string :C_phone
      t.string :email

      t.timestamps null: false
    end
  end
end
