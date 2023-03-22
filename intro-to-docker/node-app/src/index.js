const express = require('express');
const app = express();
const port = Number.parseInt(process.env['APP_PORT'] || '3000', 10);
const { join } = require('path');

app.get('/', (req, res) => {
  res.sendFile(join(__dirname, '../public/docker_logo.svg'));
});

app.listen(port, () => {
  console.log(`Example app listening on http://localhost:${port}`)
});
