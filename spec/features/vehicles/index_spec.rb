require 'spec_helper'

describe "Viewing Vehicles index" do

let!(:customer) { Customer.create(first_name: "Rafael", last_name: "Flores", addr1: "Finca Elena", addr2: "32 calle Jobos", 
							city: "Guaynabo", state: "PR", zip: "00971", h_phone: "7872874630", c_phone: "7875258367", 
							email: "raflores1@me.com") }
	before do

		visit "/customers"
			within "#customer_#{customer.id}" do
				click_link "List Vehicles"
			end
		end

		it "directs you to the vehicle index page" do

			within ("h1") do 
				expect(page).to have_content("Vehicle List")
			end
		end	
	
		it "displays no items when there is no vehicles created" do
	
				expect(vehicle.count).to eq (0)
		end
	end
