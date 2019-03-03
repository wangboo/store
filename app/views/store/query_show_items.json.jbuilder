json.items do 
	json.cache!(query_show_item_cache_key) do 
		json.array! query_show_items do |item|
			json.id 				item.id 
			json.name 			item.name 
			json.image 			item.default_image.image_path
			json.saleCount 	item.showSaleCount
			json.weight			item.weight
			json.tag				item.tag
			json.price 			item.min_price(@user).try(:show_price, @user) || '0'
			json.cprice 		item.min_price(@user).try(:final_price, @user) || '0'
			json.star 			(rand(10)+40)/10.0
			json.saleCount 	rand(100)+20
			json.priceData 	item.price_data
		end 
	end 
end 
if params[:cart] 
	json.partial! 'p_wpi_cart'
end 

