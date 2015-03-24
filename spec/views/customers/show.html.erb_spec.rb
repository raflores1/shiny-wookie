require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :cust_id => 1,
      :first_name => "First Name",
      :last_name => "Last Name",
      :addr1 => "Addr1",
      :addr2 => "Addr2",
      :city => "City",
      :state => "State",
      :zip => 2,
      :h_phone => "H Phone",
      :c_phone => "C Phone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Addr1/)
    rendered.should match(/Addr2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/2/)
    rendered.should match(/H Phone/)
    rendered.should match(/C Phone/)
    rendered.should match(/Email/)
  end
end
