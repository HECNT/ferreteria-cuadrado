var express = require('express');
var router = express.Router();
var url = 'http://localhost:4001/'
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
  if (req.session.usuario) {
    res.render('home', {url:url})
  } else {
    res.redirect('/login')
  }
});

router.get('/login', function (req, res) {
  if (req.session.usuario) {
    res.redirect('/inicio')
  } else {
    res.render('login', {url:url, login : false})
  }
})

module.exports = router;
