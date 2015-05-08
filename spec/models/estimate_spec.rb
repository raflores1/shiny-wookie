require 'spec_helper'

describe Estimate do
  it { should belong_to (:customer)}
  it {should belong_to (:vehicle)}
  it {should belong_to (:employee)}
  it {should have_many (:lines_in_estimates)}
end
