class Watch < ApplicationRecord
	has_many :orders

	def watch_type_enum
		[['Apple Watch Series 2', 'apple watch series 2'],['Apple Watch Series 2 Edition', 'apple watch series 2 edition'],['Apple Watch Series 1', 'apple watch series 2'],['Apple Watch 1st generation','apple watch 1st generation']]
	end

	def color_enum
		[['SILVER', 'silver'],['GOLD', 'gold'],['PINK', 'pink'],['BLACK', 'black'], ['WHITE', 'white']]
	end
end
