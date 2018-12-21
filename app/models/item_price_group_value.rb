class ItemPriceGroupValue < ApplicationRecord 
	self.table_name = "itempricegroupvalue"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	belongs_to :item_price_group, class_name: "ItemPriceGroup", foreign_key: "groupId"
end 