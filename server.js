const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('Olá, FIAP curso Docker!');
});

app.listen(port, () => {
  console.log(`Aplicação executando em http://localhost:${port}`);
});
