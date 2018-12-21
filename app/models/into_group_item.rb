class IntoGroupItem < ApplicationRecord 
	self.table_name = "intogroupitem"
	belongs_to :into_group, class_name: "IntoGroup", foreign_key: "groupId"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
end