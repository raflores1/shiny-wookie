class Customer < ActiveRecord::Base
	has_many :vehicles, dependent: :destroy
	has_many :estimates, dependent: :destroy
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :h_phone, presence: true
	validates :c_phone, presence: true
	validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
	

	def first_name_and_last_name
		"#{first_name} #{last_name}"
	end

	
end
