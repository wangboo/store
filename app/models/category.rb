class Category < ApplicationRecord 
	self.table_name = "category"

	belongs_to :store, class_name: "store", foreign_key: "storeId"

	def kind1_ids 
		kind1Ids.split(",").map(&:to_i) 
	end 

	def kind2_ids 
		kind2Ids.split(",").map(&:to_i) 
	end

	def brand_ids 
		brandIds.split(",").map(&:to_i) 
	end

	def kind1s
		Rails.cache.fetch("cat_kind1s_#{id}") do 
			Kind1.where(storeId: self.storeId, id: kind1_ids)
		end 
	end

	def kind2s
		Rails.cache.fetch("cat_kind2s_#{id}") do 
			Kind2.where(storeId: self.storeId, id: kind2_ids)
		end 
	end

	def brands
		Rails.cache.fetch("cat_brands_#{id}") do 
			Brand.where(storeId: self.storeId, id: brand_ids)
		end 
	end

	def items_by_page page,kind1=0,kind2=0,brand=0 
		Rails.cache.fetch("cat_items_#{kind1}_#{kind2}_#{brand}_#{page}") do 
			kind1_ids = if kind1 == 0 
				kind1s.map { |k| k.id }
			else 
				[kind1]
			end 
			kind2_ids = if kind2 == 0 
				kind2s.map { |k| k.id }
			else 
				[kind2]
			end 
			brand_ids = if brand == 0 
				brands.map { |b| b.id }
			else 
				[brand]
			end 
			Item
				.joins(:kind1_item_maps)
				.where("kind1itemmap.storeId=? and kind1Id in (?)", self.storeId, kind1_ids)
				.joins(:kind2_item_maps)
				.where("kind2itemmap.storeId=? and kind2Id in (?)", self.storeId, kind2_ids)
				.joins(:brand_item_maps)
				.where("branditemmap.storeId=? and brandId in (?)", self.storeId, brand_ids)
				.order('zorder desc')
				.limit(Item.page_size)
				.offset((page-1) * Item.page_size)
		end 
	end

end

class Kind1 < ApplicationRecord 
	self.table_name = "kind1"

	belongs_to :store, class_name: "store", foreign_key: "storeId"
	has_many :kind1_item_maps, class_name: "Kind1ItemMap", foreign_key: "kind1Id"
	has_many :items, through: :kind1_item_maps, source: :item
end

class Kind2 < ApplicationRecord 
	self.table_name = "kind2"

	belongs_to :store, class_name: "store", foreign_key: "storeId"
	has_many :kind2_item_maps, class_name: "Kind2ItemMap", foreign_key: "kind2Id"
	has_many :items, through: :kind2_item_maps, source: :item
end

class Brand < ApplicationRecord 
	self.table_name = "brand"

	belongs_to :store, class_name: "store", foreign_key: "storeId"
	has_many :brand_item_maps, class_name: "BrandItemMap", foreign_key: "brandId"
	has_many :items, through: :brand_item_maps, source: :item
end

class Kind1ItemMap < ApplicationRecord 
	self.table_name = "kind1itemmap"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	belongs_to :kind1, class_name: "Kind1", foreign_key: "kind1Id"
end

class Kind2ItemMap < ApplicationRecord 
	self.table_name = "kind2itemmap"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	belongs_to :kind2, class_name: "Kind2", foreign_key: "kind2Id"
end

class BrandItemMap < ApplicationRecord 
	self.table_name = "branditemmap"
	belongs_to :item, class_name: "Item", foreign_key: "itemId"
	belongs_to :brand, class_name: "Brand", foreign_key: "brandId"
end 