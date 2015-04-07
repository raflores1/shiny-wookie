class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.string :system
      t.string :description
      t.string :unit
      t.decimal :rate_a
      t.decimal :rate_b

      t.timestamps null: false
    end
  end
end
