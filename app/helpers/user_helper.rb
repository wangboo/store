module UserHelper

	def del_wpi_cart_key
		Rails.cache.delete(wpi_cart_key)
	end 

	def wpi_cart_key 
		"cart_#{@user.id}"
	end 

end
