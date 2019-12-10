let mongoose = require('mongoose'),
    Schema = mongoose.Schema,
    Usuarios = require('./usuarios'),
    autoIncrement = require('mongoose-auto-increment'),

    EventSchema = new Schema({
      title:{ type: String, required: true },
      start: { type: String, required: true },
      end: { type: String, required: false },
      user: { type: Schema.ObjectId, ref: "Usuario" }
    });

autoIncrement.initialize(connection)
EventSchema.plugin(autoIncrement.plugin, {model: 'Evento', startAt: 1} );

let EventoModelo = mongoose.model('Evento', EventSchema)

module.exports = EventoModelo
