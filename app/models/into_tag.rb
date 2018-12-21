class IntoTag < ApplicationRecord 
	self.table_name = "intotag"
	belongs_to :store, class_name: "Store", foreign_key: "storeId"
end