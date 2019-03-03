class UserController < ApplicationController

	include UserHelper

	def wpi_buy
		item_id = params[:itemId].to_i 
		price_id = params[:priceId].to_i 
		op_type = params[:type] # inc(增加一个) des(减少一个) upd(更新到count个) del(删除)
		count = params[:count].to_i
		count = 1 if count == 0 
		cart = @user.carts.find_by(itemId: item_id, priceId: price_id)
		unless cart
			cart = @user.carts.create(storeId: @store.id, itemId: item_id, priceId: price_id, count: 0)
		end 
		case op_type 
		when 'inc'
			cart.count += 1 
		when 'des'
			cart.count -= 1 
		when 'upd'
			cart.count = count
		when 'del'
			cart.count = 0 
		end 
		if cart.count == 0 
			cart.delete  
		else 
			cart.save 
		end 
		del_wpi_cart_key # 删除缓存 helper 方法
		render_json_ok cart: cart.to_map, totalPrice: @user.total_price
	end 

	def main
	end 


end
