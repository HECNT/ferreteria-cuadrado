var express = require('express')
    app     = express()

app.get('/', init)

function init (req, res) {
  res.send('Hola')
}

app.listen(3005, function(){
  console.log('Escuchando en el puerto 3005');
})
