class Item < ApplicationRecord
	self.table_name = "item"
	@page_size = 10 
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
		attr_reader :page_size 
	end 

	def default_image 
		item_images.first || ImageNotFound.new 
	end

	def enable_item_prices
		item_prices.where(enable: true, isDel: false)
	end

	def price_data 
		Rails.cache.fetch("price_data_#{id}") do 
			groups = item_price_groups.where(isDel: false).order('zorder desc')
			group_ids = groups.map(&:id)
			values = ItemPriceGroupValue.where(groupId: group_ids, isDel: false).to_a 
			{
				groups: groups.map{|g| {id: g.id, name: g.name} },
				values: values.map{|v| {id: v.id, groupId: v.groupId, name: v.name} },
				prices: enable_item_prices.map(&:to_map)
			}
		end 
	end 

end