json.array!(@customers) do |customer|
  json.extract! customer, :id, :cust_id, :first_name, :last_name, :addr1, :addr2, :city, :state, :zip, :h_phone, :C_phone, :email
  json.url customer_url(customer, format: :json)
end
