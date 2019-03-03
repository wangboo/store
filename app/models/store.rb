class Store < ApplicationRecord 
	self.table_name = "store"

	belongs_to :city, class_name: "Store", foreign_key: "cityId"
	has_many :categories, ->{order('zorder desc')}, class_name: "Category", foreign_key: "storeId"
	has_many :kind1s, ->{order('zorder desc')}, class_name: "Kind1", foreign_key: "storeId"
	has_many :kind2s, ->{order('zorder desc')}, class_name: "Kind2", foreign_key: "storeId"
	has_many :brands, ->{order('zorder desc')}, class_name: "Brand", foreign_key: "storeId"
	has_many :into_carouses, ->{order('rank desc')}, class_name: "IntoCarouse", foreign_key: "storeId"
	has_many :into_tags, ->{order('rank desc')}, class_name: "IntoTag", foreign_key: "storeId"
	has_many :into_groups, ->{order('rank desc')}, class_name: "IntoGroup", foreign_key: "storeId"
	has_many :items, ->{ order('zorder desc') }, class_name: "Item", foreign_key: "storeId"

	def all_visible_categories 
		categories.where(visible: true)
	end 

	def all_visible_kind1s 
		kind1s.where(visible: true)
	end

	def all_visible_kind2s 
		kind2s.where(visible: true)
	end

	def all_visible_brands 
		brands.where(visible: true)
	end

end 