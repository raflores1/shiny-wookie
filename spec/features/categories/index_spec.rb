require 'spec_helper'

describe "Viewing the categories" do 
	
it "displays the categorries" do
	visit "/categories"
	expect(page). to have_content("Browse categories")
end


end