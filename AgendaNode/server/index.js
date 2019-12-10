
const http = require('http');
      path = require('path'),
      express = require('express'),
      session = require('express-session'),
      bodyParser = require('body-parser');
      MongoClient = require('mongodb').MongoClient,
      mongoose = require('mongoose'),
	     connection = mongoose.connect('mongodb://localhost/agenda', {useNewUrlParser: true, useUnifiedTopology: true, useCreateIndex: true, useFindAndModify: false}, function(error){
           if(error){
           	 console.log(error.name +" "+ error.message);
           }else{
              console.log('Conectado correctamente');
           }
        });

const EnrutadorUsuarios = require('./usuarioRuta.js'),
      EnrutadorEventos = require('./eventoRuta.js')

const PORT = 3000
const app = express()

const Server = http.createServer(app)

app.use(express.static('../client'))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true}))
app.use(session({
    secret: 'secret-pass',
    cookie: { maxAge: 3600000 },
    resave: false,
    saveUninitialized: true,
  }));

app.use('/usuarios', EnrutadorUsuarios)
app.use('/events', EnrutadorEventos)

Server.listen(PORT, function() {
  console.log('El servidor se esta escuchando en el puerto: ' + PORT)
})
