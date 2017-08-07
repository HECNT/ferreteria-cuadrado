var express         = require('express')
    app             = express()
    bodyParser      = require('body-parser')
    path            = require('path')
    exphbs          = require('express-handlebars')
    expressSession  = require('express-session')
    cookieParser    = require('cookie-parser')

app.use(bodyParser.json())
app.use(bodyParser())
app.use(cookieParser())
app.use(expressSession({secret:'dsadsad67782g3y138217y38178ui'}))
app.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', '*');
    res.setHeader('Access-Control-Allow-Credentials', true);
    next()
})

app.use(express.static(__dirname + '/public'))

app.engine('.hbs', exphbs({
	layoutsDir: path.join(__dirname, "/client/views/layouts"),
  defaultLayout: 'main',
  extname: 'hbs'
}))

app.set('view engine', '.hbs')
app.set('views', __dirname + '/client/views')

var navRoute = require("./server/routes/nav")
app.use('/', navRoute)

/*var homeRoute = require("./server/routes/home");
app.use('/home', homeRoute);*/

/*app.get('/', init)

function init (req, res) {
  res.render('home', {url:'http://localhost:4001/'})
}*/

app.listen(4001, function(){
  console.log('Escuchando en el puerto 4001')
})
