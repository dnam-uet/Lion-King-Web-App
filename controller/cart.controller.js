var shortid = require('shortid');
const connection = require('../dataHandle');
module.exports.add=  function(req, res) {
	var productId = req.params.productId;
	var id = req.signedCookies.sessionId;
	var orderCode = shortid.generate();
	let sql = 'SELECT productId, quantityOrdered FROM orders WHERE productId =? AND status = "pending"';
	connection.query(sql,[productId], function(error,result,field) {
		if (result.length == 0) {
			let sql_insertOrder = 'INSERT INTO orders SET orderCode =?, orderDate = NOW(), customerId =?, productId =?, quantityOrdered= 1, status = "pending"'
			connection.query(sql_insertOrder, [orderCode, id, productId], function(error1, result1,field1) {
			if (error) throw error;
		})
			res.redirect('back');
		} else {
			var quantity = result[0].quantityOrdered;
			var quantityPlus = quantity + 1;
			let sql_updateOrder = 'UPDATE orders SET quantityOrdered= ? WHERE productId =? AND status = "pending"'
			connection.query(sql_updateOrder, [quantityPlus, productId], function(error2, result2,field2) {
			if (error) throw error;
		})
			res.redirect('back');
		}
	})
	}

	// res.render('shopping', {
	// 	id: productId
	// })
// 	connection.query(sql, [productId, id], function(error, result, field) {
// 		if (result) {
// 			var quantity= 1;
// 			let sql = "UPDATE  session SET productId = ?, quantity =? WHERE sessionId =?"
// 			connection.query(sql, [productId, quantity, id],function(error, result, field) {
// 				res.redirect('back');
// 			})
// 		} else {
// 			var quantity= result.quantity +1;
// 			let sql = "UPDATE session SET quantity = ? WHERE productId = ?"
// 			connection.query(sql, [quantity,productId],function(error, result, field) {
// 				res.redirect('back');
// 		}
// 		)
// 	}
// })