require 'spec_helper'

describe "labors/show" do
  before(:each) do
    @labor = assign(:labor, stub_model(Labor,
      :system => "System",
      :description => "Description",
      :unit => "Unit",
      :rate_a => "9.99",
      :rate_b => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/System/)
    rendered.should match(/Description/)
    rendered.should match(/Unit/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
