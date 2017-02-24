class User < ApplicationRecord
	has_many :promocodes, dependent: :destroy
end
