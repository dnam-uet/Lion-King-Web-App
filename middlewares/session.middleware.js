var shortId = require('shortId');
const connection = require('../dataHandle');
module.exports  = function(req,res,next) {
	if (!req.signedCookies.sessionId) {
		var sessionId = shortId.generate();
		res.cookie('sessionId', sessionId,{signed: true})
		var cusId = {customerId: sessionId};
		let sql = 'INSERT INTO customers SET ?';
		connection.query(sql, cusId , function(error, result, field) {
		if (error) throw error;
	})
	}
	next();
}
