class ItemPriceGroup < ApplicationRecord 
	self.table_name = "itempricegroup"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	has_many :item_price_group_values, class_name: "ItemPriceGroupValue", foreign_key: "groupId"
end