class Item < ApplicationRecord
	self.table_name = "item"
	self.per_page = 10 

	belongs_to :store, class_name: "Store", foreign_key: "storeId"
	has_many :kind1_item_maps, class_name: "Kind1ItemMap", foreign_key: "itemId"
	has_many :kind2_item_maps, class_name: "Kind2ItemMap", foreign_key: "itemId"
	has_many :brand_item_maps, class_name: "BrandItemMap", foreign_key: "itemId"
	has_many :kind1s, through: :kind1_item_maps, source: :kind1 
	has_many :kind2s, through: :kind2_item_maps, source: :kind1 
	has_many :brands, through: :brand_item_maps, source: :brand 
	has_many :into_group_item, class_name: "IntoGroupItem", foreign_key: "itemId"
	has_many :item_images, ->{order("zorder desc")}, class_name: "ItemImage", foreign_key: "itemId"
	has_many :item_price_groups, class_name: "ItemPriceGroup", foreign_key: "itemId"
	has_many :item_prices, class_name: "ItemPrice", foreign_key: "itemId"

	class << self 
		def order_by_sort_type(where, sort_type)
			case sort_type
			when 'default' # zorder
				where.order('zorder desc')
			when 'good' # 好评
				where
			when 'bestSale' # 销售量
				where.order('saleCount desc')
			when 'new' 
				where.order('id desc')
			end 
		end 
	end

	def default_image 
		item_images.first || ImageNotFound.new 
	end

	def enable_item_prices
		item_prices.where('enable = true and isDel = false')
	end

	def price_data 
		# view 层做了cache，这里就不做cache了
		# Rails.cache.fetch("price_data_#{id}") do 
			groups = item_price_groups.where(isDel: false).order('zorder desc')
			group_ids = groups.map(&:id)
			values = ItemPriceGroupValue.where(groupId: group_ids, isDel: false) 
			{
				groups: groups.map{|g| {id: g.id, name: g.name} },
				values: values.map{|v| {id: v.id, groupId: v.groupId, name: v.name} },
				prices: enable_item_prices.map(&:to_map)
			}
		# end 
	end 

	def min_price user 
		min_price = enable_item_prices
			.where(Arel.sql('initPrice*discount > 0'))
			.order(Arel.sql('initPrice*discount'))
			.first 
	end 

end