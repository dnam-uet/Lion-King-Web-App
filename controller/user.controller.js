var shortid = require('shortid');
const connection = require('../dataHandle');
module.exports.index =  function(req, res) {
	let sql = 'SELECT * FROM `products` ORDER BY `quantityBought` DESC LIMIT 4'
	connection.query(sql, function(error, result, field) {
		res.render('index', {
			bestSellerProduct: result
		})
	})
}
module.exports.search= function(req, res) {
	var q = "'%"+req.query.txtSearch +"%'";
	let sql = 'SELECT * FROM products WHERE productName LIKE '+ q;
	connection.query(sql, function(erroe, result, field) {
		res.render('search', {
			searchProduct: result
		})
	})
}
module.exports.shopping = function(req,res) {
	var id = req.signedCookies.sessionId;
	let sql = 'SELECT productId, quantityOrdered FROM orders WHERE customerId =? AND status = "pending"';
	connection.query(sql,[id], function(error,result,field ) {
		var purchasedProducts = [];
		for (var i=0;i<result.length;i++) {
			purchasedProducts.push(result[i].productId);
		}
		var range = '(' + purchasedProducts.toString() + ')';
		let sql_select = 'SELECT * FROM products WHERE productId IN' + range;
		connection.query(sql_select, function(error1,result2,field3) {
			for (var i=0;i<result.length;i++) {
				for (var j=0; j < result2.length;j++) {
					if (result[i].productId == result2[j].productId) {
						result2[j].quantityOrdered = result[i].quantityOrdered;
					}
				}
			}
			res.render('shopping',{
			purchasedProducts: result2
		})
		})
})
}
module.exports.postSuccess = function(req,res) {
	var id = req.signedCookies.sessionId;
	var name = req.body.txtName;
	var phone= req.body.txtPhone;
	var address = req.body.txtAddress;
	let sql = 'UPDATE customers SET customerName =?, phone =?, address =? WHERE customerId =?';
	connection.query(sql, [name, phone, address, id], function(error, result, field) {
			if (error) throw error;
	 })
	let sql_2 = 'UPDATE orders SET status = "ordered" WHERE customerId = ?';
	connection.query(sql_2, [id], function(error, result, field) {
		res.render('success');
	})
	// var orderCode = shortid.generate();
	// let sql_2 = 'INSERT INTO orders SET orderCode = ?, orderDate = NOW(), customerId = ?, status =?';
	// connection.query(sql_2, [orderCode,id, 'ordered'],function(error,result,field) {
	// 	if (error) throw error;
	// })
	
	// let sql_3 = 'INSERT INTO orderdetails SET orderCode =?, p'
	
}
// module.exports.create = function(req, res) {
// 	res.render('users/create');
// }
// module.exports.postCreate = function(req,res) {
// 	req.body.id = shortid.generate();
// 	req.body.avatar = req.file.path.split('/').slice(1).join('/');
// 	res.redirect('/users');
// }