class RemoveWeirdColumnFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, "{:index=>true}_id"
  end
end
