json.cache!(wpi_cart_key, expires_in: 10.minutes) do 
	# 购物车
	json.carts do 
		json.array! @user.carts, :count, :itemId, :priceId, :sel
	end 
	# 菜单数据
	json.k1s do 
		json.array! @store.all_visible_kind1s, :name, :id, :zorder
	end 
	json.k2s do 
		json.array! @store.all_visible_kind2s, :name, :id, :zorder
	end 
	json.bs do 
		json.array! @store.all_visible_brands, :name, :id, :zorder
	end 
	json.cats do 
		json.array! @store.all_visible_categories, :kind1Ids, :kind2Ids, :brandIds, :name, :id, :zorder
	end 
end 
# 不缓存，价格随时可能发生变动
json.totalPrice @user.total_price
