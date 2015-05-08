class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.has_one :customer
      t.has_one	:vehicle
      t.has_one	:employee
      t.has_many :lines_in_estimates
      t.datetime :date
      t.decimal :statetax
      t.decimal :muntax
      t.decimal :subtotal
      t.decimal :total

      t.timestamps null: false
    end
  end
end
