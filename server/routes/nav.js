var express = require('express');
var router = express.Router();

// router.get('/', function(req, res) {
// 	if(req.session.usuario) {
// 		res.redirect('inicio');
// 	} else {
// 		res.render('index', {assets: helpers.assetsUrl()});
// 	}
// });

router.get('/', function(req, res) {
  res.redirect('inicio');
});

router.get('/inicio', function(req, res) {
	res.render('home', {url:'http://localhost:4001/'});
});

module.exports = router;