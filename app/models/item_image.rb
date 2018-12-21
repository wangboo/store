class ItemImage < ApplicationRecord 
	self.table_name = "itemimage"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"

	def image_path 
		# "http://192.168.0.105:8000/static/item/#{storeId}/#{itemId}/#{name}"
		"/images/item/#{storeId}/#{itemId}/#{name}"
	end 

end 