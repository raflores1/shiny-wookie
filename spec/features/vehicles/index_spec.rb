require 'spec_helper'

describe "Viewing Vehicles index" do

let!(:customer) { Customer.create(first_name: "Rafael", last_name: "Flores", addr1: "Finca Elena", addr2: "32 calle Jobos", 
							city: "Guaynabo", state: "PR", zip: "00971", h_phone: "7872874630", c_phone: "7875258367", 
							email: "raflores1@me.com") }
		def visit_customer_vehicle(customer)
				visit "/customers"
				within "#customer_#{customer.id}" do
					click_link "List Vehicles"
				end
		end

		it "directs you to the vehicle index page" do
			visit_customer_vehicle(customer)
			within ("h3") do 
				expect(page).to have_content("Rafael Flores's Vehicles")
			end
		end	
	
		it "displays no items when there is no vehicles created" do
				visit_customer_vehicle(customer)
				expect(page.all("tbody.customer tr").size).to eq(0)
		end

		it "displays the vehicle listing for a customer when there are vehicles created for that customer" do
				customer.vehicles.create(vin: "78789909887900877VS", manufacturer: "Honda", year: "2014", model: "Accord", trim: "6V/Cruiser")
				customer.vehicles.create(vin: "58605909654868486984", manufacturer: "Chevrolet", year: "2010", model: "Lumina", trim: "6v ls")
				visit_customer_vehicle(customer)
					expect(page).to have_content("Honda")
					expect(page).to have_content("Chevrolet")

		end

		it "renders the show view when pressing the show button" do
			customer.vehicles.create(vin: "78789909887900877VS", manufacturer: "Honda", year: "2014", model: "Accord", trim: "6V/Cruiser")
			visit_customer_vehicle(customer)
			expect(page).to have_content("Honda")
		within ("tr#vehicle_#{customer.id}") do
			click_link "Show"
end
			expect(page).to have_content("Vehicle Information")
			expect(page).to have_content("Honda")
end

	end
