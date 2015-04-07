class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_no
      t.string :product_sku
      t.string :product_desc
      t.string :vendor
      t.string :category
      t.decimal :cost
      t.decimal :price
      t.integer :qty
      t.references :category

      t.timestamps null: false
    end
    add_index :products, :category_id 
  end
end
