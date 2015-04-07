class Category < ActiveRecord::Base
	has_many :products, through: :category_id	
end
