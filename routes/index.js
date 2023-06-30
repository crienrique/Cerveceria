var express = require('express');
const req = require('express/lib/request');
const res = require('express/lib/response');
const async = require('hbs/lib/async');
var router = express.Router();
var nodemailer = require("nodemailer");
var novedadesModel = require('../models/novedadesModel');

/* GET home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades()

  res.render('index', { novedades });
  });

router.post('/', async (req, res, next) => {

  console.log(req.body)

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var mail = req.body.email;
  var telefono = req.body.telefono;
  var domicilio = req.body.domicilio;
  var ciudad = req.body.ciudad;
  var inputState = req.body.inputState;
  var cp = req.body.cp;
  var comentario = req.body.comentario;

  var obj = {
    to: 'chicheteam@gmail.com',
    subject: 'contacto desde la web',
    html: nombre + " " + apellido + " se contactó y quiere más información a este correo: " + mail + " . <br> Además hizo el siguiente comentario: " + comentario + " . <br> Su telefono de contacto es " + telefono
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  })

  var info = await transport.sendMail(obj)

  res.render('index', {
    message: 'Mensaje enviado correctamente'
  })

})

module.exports = router;
