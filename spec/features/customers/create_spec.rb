require 'spec_helper'

describe "creation of customers in the customer view" do

def entering_new_customer(options={})
	options [:first_name] ||= "Rafael"
	options [:last_name] ||= "Flores"
	options [:addr1] ||= "Finca Elena"
	options [:addr2] ||= "32 calle Jobos"
	options [:state] ||= "PR"
	options [:zip] ||= "00971"
	options [:h_phone] ||= "7872874630"
	options [:c_phone] ||= "7875258367"
	options [:email] ||= "raflores1@me.com"

	visit "/customers"
	click_link "New Customer"
	expect(page). to have_content "New Customer"

			fill_in "First name", with: options [:first_name]
			fill_in "Last name", with: options [:last_name]
			fill_in "Addr1", with: options [:addr1]
			fill_in "Addr2", with: options [:addr2]
			fill_in "State", with: options [:state]
			fill_in "Zip", with: options [:zip]
			fill_in "H phone", with: options [:h_phone]
			fill_in "C phone", with: options [:c_phone]
			fill_in "Email", with: options [:email]

	click_button "Create Customer"
end

it "Displays success when customer is entered" do
	entering_new_customer
	expect(page).to have_content "Customer was successfully created."
	
end

it "validates that the name is present before creating a customer" do
	expect(Customer.count).to eq(0)
	entering_new_customer first_name: ""
	expect(page). to have_content "error"
	visit "/customers"
	expect(Customer.count).to eq(0)
	expect(page). to_not have_content "Flores"
end

it "validates that the last name is present before creating customer" do
	expect(Customer.count).to eq(0)
	entering_new_customer last_name: ""
	expect(page). to have_content "error"
	visit "/customers"
	expect(Customer.count).to eq(0)
	expect(page). to_not have_content "Rafael"

end

it "Validates that the home phone is present before creating a customer" do
	expect(Customer.count).to eq(0)
	entering_new_customer h_phone: ""
	expect(page). to have_content "error"
	visit "/customers"
	expect(Customer.count).to eq(0)
	expect(page). to_not have_content "Rafael"
end

it "validates that the cell phone is present before creating a cusotmer" do
	expect(Customer.count).to eq(0)
	entering_new_customer c_phone: ""
	expect(page). to have_content "error"
	visit "/customers"
	expect(Customer.count).to eq(0)
	expect(page). to_not have_content "Rafael"

end

it "validates email presence and email format is the correct" do
	expect(Customer.count).to eq(0)
	entering_new_customer email: ""
	expect(page). to have_content "error"
	visit "/customers"
	expect(Customer.count).to eq(0)
	expect(page). to_not have_content "Rafael"
end

end
