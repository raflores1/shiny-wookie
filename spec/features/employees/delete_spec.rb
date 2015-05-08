require 'spec_helper'

describe "deleting and employee" do 

employee =  Employee.create(firstname: "Gerson", middlename: "Noel", lastname: "Flores", address:"Calle Caimito F14 Villa Criollo",
					city: "Caguas", zipcode: "00725", state: "PR", homephone: "7877454545", mobilephone: "7876451211", 
					email: "tfautocorp@yahoo.com", auth: "Supervisor", wage: "25.00")

it "deletes a record and comesback to the index page" do
visit "/employees"
		expect(page). to have_content ('Gerson')
		expect(page). to have_content('Noel')
		expect(page). to have_content('Flores')
	within "#employee_#{employee.id}" do
		click_link 'Destroy'
	end
	
	expect(page).to have_content('Employee was successfully destroyed.')
	
	within ('h3') do
		expect(page).to have_content("Employee File")
	end

	# expect(page).to_not have_content ('Gerson')
	# expect(page).to_not have_content('Noel')
	# expect(page).to_not have_content('Flores')
end

end
