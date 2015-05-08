require 'spec_helper'
describe "Entering a new employee" do 



 def entering_new_employee(options={})
 	options [:firstname] ||= "Gerson"
	options [:middlename] ||= "Noel"
	options [:lastname] ||= "Flores"
	options [:address] ||= "Calle CAimito F14 Villa Criollos"
	options [:city] ||= "Caguas"
	options [:zipcode] ||= "00725"
	options [:state] ||= "PR"
	options [:homephone] ||= "7872874630"
	options [:mobilephone] ||= "7875258367"
	options [:email] ||= "tfautocorp@yahoo.com"
	options [:auth] ||= "Supervisor"
	options [:wage] ||= "25.00"

  visit "/employees"
	click_link "New Employee"
	within ("h3") do
		expect(page). to have_content "New Employee"
	end
	
		fill_in "employee_firstname", with: options [:firstname]
		fill_in "employee_middlename", with: options [:middlename]
		fill_in "employee_lastname", with: options [:lastname]
		fill_in "employee_address", with: options [:address]
		fill_in "employee_city", with: options [:city]
		fill_in "employee_zipcode", with: options [:zipcode]
		fill_in "employee_state", with: options [:state]
		fill_in "employee_homephone", with: options [:homephone]
		fill_in "employee_mobilephone", with: options [:mobilephone]
		fill_in "employee_email", with: options [:email]
		fill_in "employee_auth", with: options [:auth]
		fill_in "employee_wage", with: options [:wage]

	click_button "Create Employee"

end

it "shows succees message when an employee is entered" do
	
entering_new_employee
expect(page). to have_content('Employee was successfully created.')
end

	
end