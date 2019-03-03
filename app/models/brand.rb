class Brand < ApplicationRecord 
	self.table_name = "brand"

	belongs_to :store, class_name: "Store", foreign_key: "storeId"
	has_many :brand_item_maps, class_name: "BrandItemMap", foreign_key: "brandId"
	has_many :items, through: :brand_item_maps, source: :item
end