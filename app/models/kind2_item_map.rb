class Kind2ItemMap < ApplicationRecord 
	self.table_name = "kind2itemmap"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	belongs_to :kind2, class_name: "Kind2", foreign_key: "kind2Id"
end