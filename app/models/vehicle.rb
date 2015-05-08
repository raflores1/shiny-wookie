class Vehicle < ActiveRecord::Base
	belongs_to :customer
	has_many :estimates, dependent: :destroy
end
