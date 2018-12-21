class IntoGroup < ApplicationRecord 
	self.table_name = "intogroup"
	belongs_to :store, class_name: "Store", foreign_key: "storeId"
	has_many :into_group_items, class_name: "IntoGroupItem", foreign_key: "groupId"

	def into_group_items_visible 
		into_group_items.where(visiable: true).order('rank desc')
	end 

	def giw_class
		len = into_group_items_visible.size
		len = 10 if len > 10
		"giw-#{len}"
	end 

end