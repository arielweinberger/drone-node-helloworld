require('dotenv').config();
const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send(`Hello world, version: ${process.env.VERSION}`);
});

app.listen(3000, () => {
  console.log('App listening on port 3000, version: ' + process.env.VERSION);
});
