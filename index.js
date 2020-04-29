//console.log(process.env);
require('dotenv').config();
const express = require('express');
const connection = require('./dataHandle');
var shortid = require('shortid');
var bodyParser = require('body-parser');
var userRoute = require('./router/users-route')
var cartRoute = require('./router/cart.route')
var productRoute = require('./router/product.route')
var cookieParser = require('cookie-parser')
var sessionMiddleware = require('./middlewares/session.middleware')
const app = express();
app.use(cookieParser(process.env.SESSION_SECRET));
app.use(express.json())
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));
app.use(sessionMiddleware);
const port = 3000;
connection.connect((err)=>{
	if (err) throw err;
	console.log('Connecting MySql...' );
})
app.engine('pug', require('pug').__express);
app.set('view engine', 'pug');
app.set('views', './views');
app.use('/', userRoute);
app.use('/product', productRoute);
app.use('/cart', cartRoute);
app.listen(port, () => console.log('Example app listening at http://localhost' + port));
//signed cookie: thêm 1 cái signature riêng biệt cho từng cookie
//pagination