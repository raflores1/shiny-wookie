class Customer < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :h_phone, presence: true
	validates :c_phone, presence: true
	validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
end
