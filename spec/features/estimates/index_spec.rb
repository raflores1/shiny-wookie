require 'spec_helper'

describe "estimates requirements and functions" do
	
  



	it "displays the estimates page" do 
 		visit "/estimates"
 			within ('h3') do
 				expect(page).to have_content("List of estimates")
 			end
	end

	let!(:customer) {Customer.create(first_name: "Rafael", last_name: "Flores", addr1: "Finca Elena", addr2: "32 calle Jobos", state: "PR",
                                    zip: "00971", h_phone: "7872874630", c_phone: "7875258367", email: "raflores1@me.com") }
  
  	let!(:vehicle) {customer.vehicles.create(vin: "78789909887900877VS", manufacturer: "Honda", year: "2014", model: "Accord", trim: "6V/Cruiser") }

  	let!(:employees) { Employee.create(firstname: "Gerson", middlename: "Noel", lastname: "Flores", address:"Calle Caimito F14 Villa Criollo",
          city: "Caguas", zipcode: "00725", state: "PR", homephone: "7877454545", mobilephone: "7876451211", 
          email: "tfautocorp@yahoo.com", auth: "Supervisor", wage: "25.00") }
  
  	let!(:category) { Category.create(category: "Electrical")}
  
  	let!(:product) { Product.create(product_no: "89987656788998", product_sku: "8998766788900", product_desc: "Alternador", 
  									vendor: "Mop Auto Parts", category_id: "1" , cost: "125.99", price: "179.99", qty: "1") }


	it "displays an estimate when there is an estimate created" do
		visit "/estimates"
		click_link "Create New Estimate"
		expect(page).to have_content ("New Estimate")
		select 
	end



end