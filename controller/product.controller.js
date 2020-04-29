var shortid = require('shortid');
const connection = require('../dataHandle');
module.exports.apple =  function(req, res) {
	var productBrand = 'Macbook';
	let sql = 'SELECT * FROM `products` WHERE productBrand =? '
	connection.query(sql, [productBrand],function(error, result, field) {
		res.render('product/macbook', {
			products: result
		})
	})
}
module.exports.dell =  function(req, res) {
	var productBrand = 'Dell';
	let sql = 'SELECT * FROM `products` WHERE productBrand =? '
	connection.query(sql, [productBrand],function(error, result, field) {
		res.render('product/dell', {
			products: result
		})
	})
}
module.exports.asus =  function(req, res) {
	var productBrand = 'Asus';
	let sql = 'SELECT * FROM `products` WHERE productBrand =? '
	connection.query(sql, [productBrand],function(error, result, field) {
		res.render('product/asus', {
			products: result
		})
	})
}