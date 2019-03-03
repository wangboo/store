class Kind2 < ApplicationRecord 
	self.table_name = "kind2"

	belongs_to :store, class_name: "Store", foreign_key: "storeId"
	has_many :kind2_item_maps, class_name: "Kind2ItemMap", foreign_key: "kind2Id"
	has_many :items, through: :kind2_item_maps, source: :item
end