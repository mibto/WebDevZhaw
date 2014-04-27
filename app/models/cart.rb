class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def get_total
		sum = 0
		line_items.each do |item|
			sum += item.product.price
		end
		return sum
	end
end
