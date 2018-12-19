class StoreDataCache 
	def initialize(store_id)
		@store_id = store_id
		@map = {}
	end
end	

class BaseData  
	class << self 
		def init 
			@cat_map = {}
			stores = City.all 
			cats = Category.all 
			kind1s = Kind1.all 
			kind2s = Kind2.all 
			brands = Brand.all 
		end
		def add_cat(store_id, cat)
			map = @cat_map.fetch(store_id) { StoreDataCache.new(store_id) }
			map[cat.id] = cat 
		end 
	end 
end 

class Category < ApplicationRecord 
	self.table_name = "category"

	belongs_to :store, class_name: "store", foreign_key: "storeId"

	def kind1_ids 
		kind1Ids.split(",").map(:&to_i) 
	end 

	def kind2_ids 
		kind2Ids.split(",").map(:&to_i) 
	end

	def brand_ids 
		brandIds.split(",").map(:&to_i) 
	end

end

class Kind1 < ApplicationRecord 
	self.table_name = "kind1"

	belongs_to :store, class_name: "store", foreign_key: "storeId"
end

class Kind2 < ApplicationRecord 
	self.table_name = "kind2"

	belongs_to :store, class_name: "store", foreign_key: "storeId"
end

class Brand < ApplicationRecord 
	self.table_name = "brand"

	belongs_to :store, class_name: "store", foreign_key: "storeId"
end

class Kind1ItemMap < ApplicationRecord 
	self.table_name = "kind1itemmap"
end

class Kind2ItemMap < ApplicationRecord 
	self.table_name = "kind2itemmap"
end

class BrandItemMap < ApplicationRecord 
	self.table_name = "branditemmap"
end 

class Item < ApplicationRecord
	self.table_name = "item"

end