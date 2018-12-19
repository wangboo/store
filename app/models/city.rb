class City < ApplicationRecord 
	self.table_name = "city"

	has_many :stores, class_name: "Store", foreign_key: "cityId"

end