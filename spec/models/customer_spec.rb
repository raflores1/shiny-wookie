require 'spec_helper'

describe Customer do
	it { should have_many(:vehicles) }
end
