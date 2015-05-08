class CreateLinesInEstimates < ActiveRecord::Migration
  def change
    create_table :lines_in_estimates do |t|
      t.decimal :qty
      t.string :description
      t.decimal :extended
      t.references :estimate_id

      t.timestamps null: false
    end
    add_index :lines_in_estimates, :estimate_id
  end
end
