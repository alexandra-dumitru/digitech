class Iphone < ApplicationRecord
	has_many :orders

	def phone_type_enum
		[['7'],['6S'],['SE']]
	end

	def model_enum
		[['Normal', 'normal'],['Plus', 'plus']]
	end

	def size_enum
		[['16GB', 16],['32GB', 32],['64GB', 64],['128GB', 128],['256GB', 256]]
	end

	def color_enum
		[['RED', 'red'],['JET BLACK', 'jetblack'],['SILVER', 'silver'],['GOLD', 'gold'],['PINK', 'pink'],['BLACK', 'black']]
	end
end
