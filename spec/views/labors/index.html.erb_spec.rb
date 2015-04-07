require 'spec_helper'

describe "labors/index" do
  before(:each) do
    assign(:labors, [
      stub_model(Labor,
        :system => "System",
        :description => "Description",
        :unit => "Unit",
        :rate_a => "9.99",
        :rate_b => "9.99"
      ),
      stub_model(Labor,
        :system => "System",
        :description => "Description",
        :unit => "Unit",
        :rate_a => "9.99",
        :rate_b => "9.99"
      )
    ])
  end

  it "renders a list of labors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "System".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
