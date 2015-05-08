class Product < ActiveRecord::Base
	belongs_to :category
	has_many :lines_in_estimates

	def  category_and_description
		"#{category.category} : #{product_desc}"
	end

	


end
