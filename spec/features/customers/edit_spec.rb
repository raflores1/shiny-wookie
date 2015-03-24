require 'spec_helper'

describe "editing of customers in the customer view" do

it "updates a todo list succesfully with correct information" do


customer = Customer.create(first_name: "Rafael", last_name: "Flores", addr1: "Finca Elena", addr2: "32 calle Jobos", 
							city: "Guaynabo", state: "PR", zip: "00971", h_phone: "7872874630", c_phone: "7875258367", 
							email: "raflores1@me.com")

visit "/customers"
within "#customer_#{customer.id}" do
	click_link "Edit"
end

	fill_in "First name", with: "New Name"
	fill_in "Last name", with: "New Last Name"
	fill_in "Addr1", with: "New address1"
	fill_in "Addr2", with: "New address2"
	fill_in "City", with: "New City"
	fill_in "State", with: "GH"
	fill_in "Zip", with: "898789"
	fill_in "H phone", with: "8889997866"
	fill_in "C phone", with: "9898767788"
	fill_in "Email", with: "new@email.com"

	click_button "Update Customer"

	customer.reload

	expect(page).to have_content "Customer was successfully updated."
	expect(customer.first_name).to eq "New Name"
	expect(customer.last_name).to eq "New Last Name"


end

end
