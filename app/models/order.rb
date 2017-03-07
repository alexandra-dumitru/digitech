class Order < ApplicationRecord
	belongs_to :user

	def total_cost_iphone
		item_cost = 0
		if promocode.valid?
			item_cost = promocode.promotype / 100 * iphone.price
		end
	end
end
