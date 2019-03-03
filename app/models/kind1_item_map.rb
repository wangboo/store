class Kind1ItemMap < ApplicationRecord 
	self.table_name = "kind1itemmap"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	belongs_to :kind1, class_name: "Kind1", foreign_key: "kind1Id"
end