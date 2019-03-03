# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class @Category
	constructor:(@cat, @kind1s, @kind2s, @brands)->

class @CategoryMap 
	constructor:(cats, k1s, k2s, bs)-> 
		k1Map = new Map()
		k2Map = new Map()
		bMap = new Map()
		@catMap = new Map()
		k1Map.set e.id, e for e in k1s 
		k2Map.set e.id, e for e in k2s 
		bMap.set e.id, e for e in bs 
		for cat in cats 
			ck1Map = @transform(cat.kind1Ids, k1Map)
			ck2Map = @transform(cat.kind2Ids, k2Map)
			cbMap = @transform(cat.brandIds, bMap)
			@catMap.set cat.id, new Category(cat, ck1Map, ck2Map, cbMap)

	transform:(idstr, map)-> 
		# console.log("idstr = #{idstr}, map = #{map.entries}")
		idstr.split(',').map((x)->parseInt(x)).reduce(((acc, id)->
				a = map.get(id)
				acc.set(a.id, a) if a
				acc
			), new Map())

	getK1s:(catId)-> 
		@catMap.get(catId).kind1s

	getK2s:(catId)-> 
		@catMap.get(catId).kind2s

	getBs:(catId)->
		@catMap.get(catId).brands

	getCatMap:()-> @getValueSorted(@catMap)
		
	getValueSorted:(map)->
		arr = []
		map.forEach((v,k)-> arr.push(v.cat))
		arr.sort((a,b)->b.zorder-a.zorder)

numberScrollDelay = 0.5

@Show = {}
# 分页数据
Show.loading = false 
Show.page = 1 
Show.hasNext = true 
# 分类菜单数据
Show.catMap = undefined
window.itemCountMap = new Map() # itemId - Integer 
window.itemMap = new Map() # itemId - Item 
window.totalPrice = 0
window.priceMap = new Map(); # priceId - Cart 

Show.init = ()->
	$(Show.reset_item_margin)
	# 联动菜单
	$ ()->
		$('.show-menu-type').click ()->
			node = $(this)
			target = $('#'+node.attr('s-menu'))
			if target.is(':visible')
				target.hide(Show.reset_item_margin)
			else
				$('.show-menu-dropdown:visible').hide()
				target.toggle('normal', Show.reset_item_margin)
		# 获取内容
		Show.fetch_item(cart: true)
	# // 排序选项监听
	$ ()->
		$(".menu-item[s-type='s'] .wapper .value").click ()->
			node = $(this)
			return if node.hasClass('active')
			$(".menu-item[s-type='s'] .wapper .value.active").removeClass('active')
			node.addClass('active')
			s = node.attr('cid')
			Show.fetch_item({reset: true})
	# 滚动分页
	$ ()->
		$(window).bind "scroll", ()->
			return if Show.loading or not Show.hasNext
			Show.fetch_item() if $(document).scrollTop() + $(window).height() > $(document).height() - 20

Show.reset_item_margin = ()->
	height = $('.show-header').height() + 10
	$('.show-items-wrapper').css('margin-top', height+'px')

Show.fetch_item = (opt = {})->
	data = 
		c: Show.params['c'] or 0
		k1: Show.params['k1'] or 0
		k2: Show.params['k2'] or 0
		b: Show.params['b'] or 0
		s: Show.params['s'] or 'default'
	if opt.reset 
		$('.show-items').empty()
		Show.page = 1 
		Show.hasNext = true 
	data.page = Show.page 
	if opt.cart 
		data.cart = true 
	Show.loading = true 
	$('.show-loading').show()
	# console.log 'fetch_item req ', data
	$.post '/wpi/v1/query_show_items.json', data, (resp, status)->
			# console.log('resp = ', resp)
			if status == 'success'
				Show.page += 1
				Show.fetch_item_resp(resp)
				Show.loading = false
				$('.show-loading').hide()

Show.rebind_click = ()->
	for name in ['k1', 'k2', 'b']
		bindNode = $(".menu-item[s-type='#{name}'] .wapper .value")
		bindNode.unbind('click')
		bindNode.click ()->
			node = $(this)
			return if node.hasClass 'active'
			v = node.attr 'cid'
			$(this).parents('.wapper').find('.value.active').removeClass('active')
			node.addClass 'active'
			if name == 'k1'
				Show.params.k1 = v 
			else if name == 'k2'
				Show.params.k2 = v 
			else if name == 'b'
				Show.params.b = v 
			Show.fetch_item reset: true 

Show.menuResetCat = (node)->
	$(".menu-item[s-type='k1']").hide()
	$(".menu-item[s-type='k2']").hide()
	$(".menu-item[s-type='b']").hide()
	$(".menu-item[s-type='c'] .value.active").removeClass('active')
	node.addClass('active')
	Show.params.k1 = 0 
	Show.params.k2 = 0 
	Show.params.b = 0 

Show.menuShowCat = ()->
	menuK1 = $(".menu-item[s-type='k1'] .wapper")
	menuK2 = $(".menu-item[s-type='k2'] .wapper")
	menuB = $(".menu-item[s-type='b'] .wapper")
	menuK1.empty()
	menuK2.empty()
	menuB.empty()
	menuK1.append "<div class='value' cid='0'>全部</div>"
	menuK2.append "<div class='value' cid='0'>全部</div>"
	menuB.append "<div class='value' cid='0'>全部</div>"
	cid = Show.params.c 
	# console.log 'cid = ', cid
	Show.catMap.getK1s(cid).forEach (v)->
		html = "<div class='value' cid='#{v.id}'>#{v.name}</div>"
		menuK1.append(html)
	Show.catMap.getK2s(cid).forEach (v)->
		html = "<div class='value' cid='#{v.id}'>#{v.name}</div>"
		menuK2.append(html)
	Show.catMap.getBs(cid).forEach (v)->
			html = "<div class='value' cid='#{v.id}'>#{v.name}</div>"
			menuB.append(html)
	$(".menu-item[s-type='c'] .value.active").removeClass('active')
	$(".menu-item[s-type='c'] .value[cid='#{cid}']").addClass('active')
	$(".menu-item[s-type='k1'] .wapper .value[cid='#{Show.params.k1}']").addClass('active')
	$(".menu-item[s-type='k2'] .wapper .value[cid='#{Show.params.k2}']").addClass('active')
	$(".menu-item[s-type='b'] .wapper .value[cid='#{Show.params.b}']").addClass('active')
	$(".menu-item[s-type='k1']").show()
	$(".menu-item[s-type='k2']").show()
	$(".menu-item[s-type='b']").show()
	Show.rebind_click()

Show.initCart = (resp)->
	Show.changePrice resp.totalPrice if resp.totalPrice
	Show.catMap = new CategoryMap(resp.cats, resp.k1s, resp.k2s, resp.bs)
	catWapper = $(".menu-item[s-type='c'] .wapper")
	Show.catMap.getCatMap().forEach (cat)->
		html = "<div class='value' cid='#{cat.id}'>#{cat.name}</div>"
		catWapper.append(html)
	typeCNode = $(".menu-item[s-type='c'] .value")
	typeCNode.unbind('click')
	typeCNode.click ()->
		valueNode = $(this)
		return if valueNode.hasClass 'active'
		cid = parseInt(valueNode.attr('cid'))
		Show.params.c = cid 
		# console.log('valueNode = ', cid)
		if cid == 0 
			Show.menuResetCat(valueNode)
		else 
			Show.menuShowCat()
		Show.reset_item_margin()
		Show.fetch_item(reset: true)
	# 购物车
	Show.menuShowCat() if Show.params.c > 0
	for cart in resp.carts
		window.priceMap.set(cart.priceId, cart)
		count = window.itemCountMap.get(cart.itemId) or 0
		window.itemCountMap.set(cart.itemId, count + cart.count)

Show.fetch_item_resp = (resp)->
	Show.initCart resp if resp.carts
	showItems = $('.show-items')
	Show.hasNext = false if resp.items.length == 0
	for item in resp.items
		window.itemMap.set(item.id, item)
		Show.itemNode = document.getElementById('itemTpl').innerHTML unless Show.itemNode
		html = etpl.compile(Show.itemNode)
		node = html(item)
		showItems.append(node)
		count = window.itemCountMap.get(item.id) or 0
		# priceCount 
		if item.priceData.prices.length == 0
			str = "<span class='no-sale'>即将上架</span>"
			cartNode = $('.show-items .item:last .cart')
		else if item.priceData.prices.length == 1
			Show.init_item_count(count)
		else
			str = "<span class='guige'>选择规格</span>"
			cartNode = $('.show-items .item:last .cart')
			cartNode.prepend(str)
			cartNode.find('.guige').click ()->
				Show.showGuige($(this).parents('.item'))
	Show.rebind_item_click()

Show.changePrice = (price, initGuide=false)-> 
	startVal = if initGuide then 0 else window.totalPrice
	data = 
		startVal: startVal
		decimals: 1
		duration: numberScrollDelay
		endVal: price
	$('.ensure-cart label').countup(data) unless initGuide
	$('.show-guige #totalPrice').countup(data)
	window.totalPrice = price

Show.init_item_count = (count, node)->
	# console.log 'node = ', node, ', count = ', count 
	str = if node then "" else "<span class='glyphicon glyphicon-plus-sign'></span>"
	str = "<span class='glyphicon glyphicon-minus-sign'></span><span class='num'>#{count}</span>" + str if count > 0
	if node 
		node.prepend str 
		Show.sendBuy(node.parents('.item'), 'inc')
	else 
		$('.show-items .item:last .cart').prepend(str)

Show.add_item_count = (node)->
	numNode = node.find('.num')
	num = parseInt(numNode.text())
	numNode.text(num+1)
	Show.sendBuy(node.parents('.item'), 'inc')

Show.des_item_count = (node)->
	numNode = node.find('.num')
	num = parseInt(numNode.text())
	if num <= 1
		numNode.remove()
		node.parent().find('.glyphicon-minus-sign').remove()
	else
		numNode.text(num-1)
	Show.sendBuy(node.parents('.item'), 'des')

Show.rebind_item_click = ()->
	cartNode = $('.show-items .item .cart')
	plusNode = cartNode.find('.glyphicon-plus-sign')
	minusNode = cartNode.find('.glyphicon-minus-sign')
	plusNode.unbind('click')
	minusNode.unbind('click')
	plusNode.click ()->
		addNode = $(this).parent()
		if addNode.find('.glyphicon-minus-sign').length == 0
			Show.init_item_count(1, addNode)
			Show.rebind_item_click()
		else
			Show.add_item_count(addNode)
	minusNode.click ()->
		addNode = $(this).parent()
		Show.des_item_count(addNode)

Show.showWait = (txt='加载中')-> 
	html = "<div class='waiting'><img src='/assets/loading.gif'/><div class='txt'>#{txt}</div></div>"
	$('body').prepend html

Show.hideWait = ()-> 
	$('.waiting').remove()

Show.updateCart = (cart)->
	window.priceMap.set(cart.priceId, cart)

Show.showGuige = (itemNode)-> 
	itemId = parseInt(itemNode.attr('cid'))
	item = window.itemMap.get(itemId)
	groups = item.priceData.groups
	values = item.priceData.values
	prices = item.priceData.prices 
	groupsData = for g in groups
		valueArr = ({id: v.id, name: v.name} for v in values when v.groupId == g.id)
		{id: g.id, name: g.name, values: valueArr}
	# console.log('groupsData = ', groupsData, ', item = ', item)
	price = prices[0].initPrice
	cprice = price*prices[0].discount/10.0
	cart = window.priceMap.get(prices[0].id)
	count = if cart then cart.count else 0
	data = {
		id: item.id
		img: item.image
		name: item.name
		count: count
		star: item.star
		saleCount: item.saleCount
		price: price
		cprice: cprice
		groups: groupsData
	}
	tpl = document.getElementById('guigeTpl').innerHTML
	doc = etpl.compile(tpl)
	html = doc(data)
	$('body').append(html)
	node = $('.show-guige')
	node.find('.g-row').each ()->
		$(this).find('.value:first-child').addClass('active')
	Show.changePrice(window.totalPrice, true)
	node.find('.glyphicon-minus-sign').click ()->
		evtNode = $(this)
		numNode = node.find('.num')
		num = parseInt(numNode.text())
		return if num <= 0 
		numNode.text(num-1)
		Show.sendBuy(node, 'des')
	node.find('.glyphicon-plus-sign').click ()->
		evtNode = $(this)
		numNode = node.find('.num')
		num = parseInt(numNode.text())
		numNode.text(num+1)
		Show.sendBuy(node, 'inc')

	node.find('.g-row .wapper .value').click ()->
		# console.log 'valueNode click'
		valueNode = $(this)
		return if (valueNode.hasClass('active')) 
		valueNode.parents('.g-row').find('.wapper .value.active').removeClass('active')
		valueNode.addClass('active')
		Show.onPriceValueChange(item, node, parseInt(valueNode.attr('cid')))
	node.slideToggle(500)
	$('.show-guige .close').click(Show.hideGuige)

Show.hideGuige = ()-> 
	# console.log('hideGuige')
	node = $('.show-guige')
	node.slideToggle(500, ()-> node.remove())

Show.onPriceValueChange = (item, node, valueId)->
	valueArr = []
	node.find('.g-row').each ()->
		cid = $(this).find('.value.active').attr('cid')
		valueArr.push(parseInt(cid)) if cid
	priceMixStr = valueArr.sort((a,b)-> a-b).join(',')
	price = item.priceData.prices.find (p)-> p.mixStr == priceMixStr
	unless price
		console.log('valueArr = ', valueArr, ', item.priceData = ', item.priceData)

	node.find('.a1 img').attr('src', item.image)
	node.find('.a1 .name').text(item.name)
	node.find('.a1 .star').text(item.star)
	node.find('.a1 .saleCount').text('月售'+item.saleCount)
	cart = window.priceMap.get(price.id)
	count = if cart then cart.count else 0 
	node.find('.a3 .num').text(count)
	Show.guigeInitPrice(item, node, price) if price

Show.guigeInitPrice = (item, node, value)->
	# console.log('window.role = ', window.role)
	if window.role == 0 # 普通用户
		price = value.initPrice
		cprice = value.initPrice*value.discount/10.0
		node.find('.a1 #sg-price').text(price)
		if price == cprice
			node.find('.a1 #sg-price').remove()
		else if node.find('.a1 #sg-cprice').length == 0 
			node.find('.a1 .price').prepend("<s id='sg-cprice'>"+cprice+"</s>")
		else 
			node.find('.a1 #sg-cprice').text(cprice)

Show.sendBuy = (itemNode, type)->
	itemId = parseInt(itemNode.attr('cid'))
	item = window.itemMap.get(itemId)
	priceId = if itemNode.hasClass('show-guige')
		values = []
		itemNode.find('.a2 .g-row').each ()->
			vid = $(this).find('.value.active').attr('cid')
			values.push(vid) if vid 
		mixStr = values.sort((a,b)-> a-b).join(',')
		price = item.priceData.prices.find (p)-> 
			p.mixStr == mixStr
		if price then price.id else 0 
	else 
		item.priceData.prices[0].id
	if priceId == 0 
		console.log 'priceId == 0!, mixStr = ', mixStr, ', values = ', values
		return 
	data = 
		itemId: itemId
		priceId: priceId
		type: type
	# console.log('data = ', data)
	# Show.showWait()
	$.post '/wpi/v1/buy.json', data, (resp)->
		# window.Show.hideWait()
		if resp._r == '0'
			count = resp.count
			window.itemCountMap.set(itemId, count)
			Show.changePrice(resp.totalPrice)
			Show.updateCart(resp.cart)


