class City < ApplicationRecord 
	self.table_name = "city"

	has_many :stores, class_name: "Store", foreign_key: "cityId"

	def all_visible_stores
		stores.where(visible: 1)
	end 

end