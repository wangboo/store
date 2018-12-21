class IntoCarouse < ApplicationRecord 
	self.table_name = "intocarouse"
	belongs_to :store, class_name: "Store", foreign_key: "storeId"

	class << self 
		def carouse_data store
			all_visible(store).map{|e| {id: e.id, src: e.image} }
		end
	end

end