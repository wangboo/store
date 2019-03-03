module StoreHelper

	def carouse_helper data, opt = {}
		id = opt.fetch(:id) { "carousel" }
		li_str = data.each_with_index.map do |d,idx|
			if idx == 0 
				"<li data-target='\##{id}' data-slide-to='#{idx}'  class='active'></li>"
			else 
				"<li data-target='\##{id}' data-slide-to='#{idx}'></li>"
			end
		end.join("")
		item_str = data.each_with_index.map do |d, idx|
			if idx == 0 
				"<div class='item active'><img src='#{d[:src]}'></div>"
			else 
				"<div class='item'><img src='#{d[:src]}'></div>"
			end 
		end.join("")
	%Q{
<div id='#{id}' class='carousel slide' data-ride='carousel'>
  <ol class='carousel-indicators'>
    #{li_str}
  </ol>

  <!-- Wrapper for slides -->
  <div class='carousel-inner' role='listbox'>
    #{item_str}
  </div>
  <!-- Controls -->
  <a class='left carousel-control' href='#carousel' role='button' data-slide='prev'>
    <span class='glyphicon glyphicon-chevron-left' aria-hidden='true'></span>
    <span class='sr-only'>上一个</span>
  </a>
  <a class='right carousel-control' href='#carousel' role='button' data-slide='next'>
    <span class='glyphicon glyphicon-chevron-right' aria-hidden='true'></span>
    <span class='sr-only'>下一个</span>
  </a>
</div>
}.html_safe
	end

	def query_show_item_cache_key 
		"query_show_item_cache_key_#{params[:c]}_#{params[:k1]}_#{params[:k2]}_#{params[:b]}_#{params[:s]}"
	end

	def query_show_items 
		cat_id = params[:c].to_i
		kind1 = params[:k1].to_i 
		kind2 = params[:k2].to_i 
		brand = params[:b].to_i 
		sort_type = params[:s] || 'default'
		page = (params[:page] || '1').to_i || 1 
		if cat_id == 0 
			where = @store.items.where(visible: true).paginate(page: page)
			Item.order_by_sort_type(where, sort_type)
		else 
			Category.find(cat_id).items_by_page page, kind1, kind2, brand, sort_type
		end 
	end 

	

end
