const express = require('express');
const app = express();
const port = Number.parseInt(process.env['APP_PORT'] || '3000', 10);

app.get('/', (req, res) => {
  res.send('Hello World!')
});

app.listen(port, () => {
  console.log(`Example app listening on http://localhost:${port}`)
});
