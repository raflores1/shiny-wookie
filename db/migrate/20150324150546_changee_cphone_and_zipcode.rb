class ChangeeCphoneAndZipcode < ActiveRecord::Migration
  def change
  	change_column :customers, :zip, :string
  	rename_column :customers, :C_phone, :c_phone
  end
end
