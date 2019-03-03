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

	def items_by_page page,kind1=0,kind2=0,brand=0,sort_type='default'
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
			where = Item
				.joins(:kind1_item_maps)
				.where("kind1itemmap.storeId=? and kind1Id in (?)", self.storeId, kind1_ids)
				.joins(:kind2_item_maps)
				.where("kind2itemmap.storeId=? and kind2Id in (?)", self.storeId, kind2_ids)
				.joins(:brand_item_maps)
				.where("branditemmap.storeId=? and brandId in (?)", self.storeId, brand_ids)
				.order('zorder desc')
				.paginate(page: page)
			Item.order_by_sort_type(where, sort_type)
		end 
	end

end
