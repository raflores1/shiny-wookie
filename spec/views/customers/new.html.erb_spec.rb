require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
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
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
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
