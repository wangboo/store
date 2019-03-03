class Cart < ApplicationRecord 
	self.table_name = 'cart'
	belongs_to :user, class_name: 'User', foreign_key: 'userId'

	def to_map
		{count: count, itemId: itemId, priceId: priceId, sel: sel}
	end

end 