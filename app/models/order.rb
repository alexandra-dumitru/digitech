class Order < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :iphones, optional: true
	belongs_to :macs, optional: true
	belongs_to :watches, optional: true
end
