class User < ApplicationRecord 
	self.table_name = "user"

	has_many :carts, class_name: 'Cart', foreign_key: 'userId'

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

	def total_price
		part = case role 
		when 0 # 普通用户
			"p.initPrice*p.discount/10.0"
		when 1 # 工人
			"p.workerPrice"
		when 2 # 分销商
			"p.fxPrice"
		else 
			raise "unknown role #{role}"
		end 
		sql = "select sum(#{part}*c.count) from itemprice p,cart c where c.userId=#{id} and c.sel=1 and c.priceId=p.id"
		ActiveRecord::Base.connection.query(sql).first.first.round(2)
	end 
	

end 