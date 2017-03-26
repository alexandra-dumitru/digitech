class Mac < ApplicationRecord
	has_many :orders

	def mac_type_enum
		[['Macbook', 'macbook'],['Macbook Pro', 'macbook pro'],['Macbook Air', 'macbook air'],['iMac','imac'],['Mac Pro','mac pro'], ['Mac mini','mac mini']]
	end

	def color_enum
		[['SILVER', 'silver'],['GOLD', 'gold'],['PINK', 'pink'],['BLACK', 'black'], ['WHITE', 'white']]
	end
end
