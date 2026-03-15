const http = require('http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hola ! API funcionando desde el contenedor.\n');
});

server.listen(3000, '0.0.0.0', () => {
  console.log('Servidor escuchando en el puerto 3000');
});
