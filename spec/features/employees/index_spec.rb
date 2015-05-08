require 'spec_helper'

describe "Employees features of the index view" do
	
it "takes you to a blank page when there is no records on the index" do
visit "/employees"
within ("h3") do
	expect(page).to have_content ("Employee File")
end
end

let!(:employees) { Employee.create(firstname: "Gerson", middlename: "Noel", lastname: "Flores", address:"Calle Caimito F14 Villa Criollo",
					city: "Caguas", zipcode: "00725", state: "PR", homephone: "7877454545", mobilephone: "7876451211", 
					email: "tfautocorp@yahoo.com", auth: "Supervisor", wage: "25.00") }


it "shows a customer when there is a customer entered" do
visit "/employees"
		expect(page). to have_content ('Gerson')
		expect(page). to have_content("Noel")
		expect(page). to have_content("Flores")
		
end







end