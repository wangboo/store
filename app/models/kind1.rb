class Kind1 < ApplicationRecord 
	self.table_name = "kind1"

	belongs_to :store, class_name: "Store", foreign_key: "storeId"
	has_many :kind1_item_maps, class_name: "Kind1ItemMap", foreign_key: "kind1Id"
	has_many :items, through: :kind1_item_maps, source: :item
end