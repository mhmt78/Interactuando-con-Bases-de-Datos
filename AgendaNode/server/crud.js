var Usuario = require('./usuarios.js')

module.exports.crearUsuarioDemo = function(callback){
  var arr = [{email: 'mhernan157@hotmail.com', user: "mhernan", password: "123"}];
  Usuario.create(arr, function(error, docs) {
    if (error){
      if (error.code == 11000){
        callback("usuario: mhernan </br> password: 123")
      }else{
        callback(error.message)
      }
    }else{
      callback(null, "El usuario 'mhernan' se ha registrado correctamente. </br>usuario: mhernan </br> password: 123")
    }
  });
}
