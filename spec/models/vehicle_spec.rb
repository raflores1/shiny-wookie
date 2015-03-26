require 'spec_helper'

describe Vehicle do
     it { should belong_to(:customer) }
end
