class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :homephone
      t.string :mobilephone
      t.string :email
      t.string :auth
      t.decimal :wage

      t.timestamps null: false
    end
  end
end
