class User < ApplicationRecord 
	self.table_name = "user"

	def cur_store 
		if self.curStoreId == 0 
			s = Store.all_visible.first  
			if s 
				self.curStoreId = s.id 
				update_attribute(:curStoreId, self.curStoreId)
			end 
			s 
		else 
			Store.find(self.curStoreId)
		end 
	end 

end 