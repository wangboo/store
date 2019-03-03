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

	def show_price(user) 
		case user.role  
		when 0 
			initPrice
		when 1 
			workerPrice
		when 2 
			fxPrice
		end 
	end

	def final_price(user)
		p = case user.role 
		when 0 # 普通用户
			(initPrice * discount) / 10.0
		when 1 # 工人
			workerPrice
		when 2 # 分销商
			fxPrice
		end
		p.round(2).to_s
	end

end