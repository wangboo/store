class ItemPrice < ApplicationRecord 
	self.table_name = "itemprice"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"

	def item_price_group_values 
		ids = mixStr.split(",").map(&:to_i)
		Item.where(id: ids)
	end 

	def to_map
		{
			id: id, 
			count: count,
			initPrice: initPrice,
			fxPrice: fxPrice,
			workerPrice: workerPrice,
			discount: discount,
			weight: weight,
			unit: unit,
			mixStr: mixStr
		}
	end

end