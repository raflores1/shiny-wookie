require 'spec_helper'


describe "Viewing products from the index" do 
let!(:category) { Category.create(category: "Electrical")}
let!(:product) { Product.create(product_no: "89987656788998", product_sku: "8998766788900", product_desc: "Alternador", 
	vendor: "Mop Auto Parts", category_id: "1" , cost: "125.99", price: "179.99", qty: "1") }

it "displays a product when there is a product" do
	visit "/products"
	expect(page).to have_content("89987656788998")
	expect(page).to have_content("8998766788900")
	expect(page).to have_content("Alternador")
	expect(page).to have_content("Electrical")
	expect(page).to have_content("179.99")
	expect(page).to have_content("1")

end

it "navigates to the page view products when click link view product it display all attributes of the product" do
	visit "/products"
	expect(page). to have_content("Alternador")
	within "#product_#{product.id}" do
		click_link "View"
	end
	within "h1" do
		expect(page).to have_content "Product view"
	end
	expect(page).to have_content "Mop Auto Parts"
	expect(page).to have_content "Electrical"
end

it "navigates to edit page when hit the edit link" do
visit "/products"
expect(page).to have_content("Alternador")
within "#product_#{product.id}" do
	click_link "Edit"
end
within ("h1") do
 expect(page).to have_content "Product edit"
end
expect(page).to have_content("Alternador")
expect(page).to have_content("89987656788998")

end


end