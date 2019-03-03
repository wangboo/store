class BrandItemMap < ApplicationRecord 
	self.table_name = "branditemmap"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	belongs_to :brand, class_name: "Brand", foreign_key: "brandId"
end 