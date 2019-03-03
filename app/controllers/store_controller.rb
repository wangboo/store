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
	end

end
