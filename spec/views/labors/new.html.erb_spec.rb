require 'spec_helper'

describe "labors/new" do
  before(:each) do
    assign(:labor, stub_model(Labor,
      :system => "MyString",
      :description => "MyString",
      :unit => "MyString",
      :rate_a => "9.99",
      :rate_b => "9.99"
    ).as_new_record)
  end

  it "renders new labor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", labors_path, "post" do
      assert_select "input#labor_system[name=?]", "labor[system]"
      assert_select "input#labor_description[name=?]", "labor[description]"
      assert_select "input#labor_unit[name=?]", "labor[unit]"
      assert_select "input#labor_rate_a[name=?]", "labor[rate_a]"
      assert_select "input#labor_rate_b[name=?]", "labor[rate_b]"
    end
  end
end
