class Store < ApplicationRecord 
	self.table_name = "store"

	belongs_to :city, class_name: "Store", foreign_key: "cityId"

end 