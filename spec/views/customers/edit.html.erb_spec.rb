require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :cust_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :addr1 => "MyString",
      :addr2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :h_phone => "MyString",
      :c_phone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_cust_id[name=?]", "customer[cust_id]"
      assert_select "input#customer_first_name[name=?]", "customer[first_name]"
      assert_select "input#customer_last_name[name=?]", "customer[last_name]"
      assert_select "input#customer_addr1[name=?]", "customer[addr1]"
      assert_select "input#customer_addr2[name=?]", "customer[addr2]"
      assert_select "input#customer_city[name=?]", "customer[city]"
      assert_select "input#customer_state[name=?]", "customer[state]"
      assert_select "input#customer_zip[name=?]", "customer[zip]"
      assert_select "input#customer_h_phone[name=?]", "customer[h_phone]"
      assert_select "input#customer_c_phone[name=?]", "customer[c_phone]"
      assert_select "input#customer_email[name=?]", "customer[email]"
    end
  end
end
