var express = require('express');
var multer  = require('multer');
var upload = multer({dest: './public/upload'})
var cookieParser = require('cookie-parser');
var authMiddleware = require('../middlewares/auth.middleware');
var router = express.Router();
var controller = require('../controller/user.controller')
router.use(cookieParser());
router.get('/',controller.index)
router.get('/search', controller.search)
router.get('/shopping', controller.shopping) 
router.post('/shopping/success', controller.postSuccess )
// router.post('/create', upload.single('avatar'),controller.postCreate)
module.exports = router;