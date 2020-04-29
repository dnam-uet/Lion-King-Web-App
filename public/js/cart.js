function handleCart(data) {
	data1 = JSON.parse(data);
	if (sessionStorage.length == 0) {
		data1.quantity = 1;
		sessionStorage.setItem('item0', JSON.stringify(data1))
	} else {
		var find = false;
	// if (data1.quantity == null) {
	// data1.quantity = 1
	//  type = sessionStorage.length;
	// var item = 'item' + type;
	// sessionStorage.setItem(item , JSON.stringify(data1))
	// }
	// else {
	// 	var quantity = data1.quantityl
	// data1.quantity = quantity+1;
	// sessionStorage.setItem('key', JSON.stringify(data1))
	for (var i=0;i< sessionStorage.length;i++) {
			var index = 'item' + i;
			var product = JSON.parse(sessionStorage.getItem(index));
	 		if(product.productId == data1.productId) {
	 			find = true;
	 			var quantity = product.quantity +1;
	 			data1.quantity = quantity;
	 			sessionStorage.setItem(index, JSON.stringify(data1))
	 			break;
	 	}
	 	if (!find) {
	 		var type = sessionStorage.length;
	 		var item = 'item' + type;
	 		data1.quantity = 1;
	 		sessionStorage.setItem(item , JSON.stringify(data1))
	 	}
	}
}
	
}