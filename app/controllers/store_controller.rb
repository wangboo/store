class StoreController < ApplicationController

	def main 
	end

	def show 
		store_id = params[:store_id].to_i 
		@store = Store.find(store_id)
		if @user and @user.curStoreId != store_id
			@user.curStoreId = store_id
			@user.update_attribute(:curStoreId, store_id) 
		end
	end 

	def query_show_items
		kind1 = params[:k1].to_i 
		kind2 = params[:k2].to_i 
		brand = params[:b].to_i 
		@items = Category.items_by_page 1, kind1, kind2, brand 
	end

end
