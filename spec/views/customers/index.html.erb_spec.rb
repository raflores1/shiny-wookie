require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
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
      ),
      stub_model(Customer,
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
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Addr1".to_s, :count => 2
    assert_select "tr>td", :text => "Addr2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "H Phone".to_s, :count => 2
    assert_select "tr>td", :text => "C Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
