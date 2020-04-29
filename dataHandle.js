var mysql = require('mysql');
const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database: 'mydatabase'

})
module.exports = connection;