var express = require('express');
var cookieParser = require('cookie-parser');
var router = express.Router();
var controller = require('../controller/product.controller')
router.use(cookieParser());
//router.get('/',controller.index)
router.get('/apple', controller.apple)
router.get('/dell', controller.dell) 
router.get('/asus', controller.asus)
router.get('/hp', controller.asus)
router.get('/lenovo', controller.apple)
// router.post('/create', upload.single('avatar'),controller.postCreate)
module.exports = router;