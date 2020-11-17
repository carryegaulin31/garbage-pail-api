const express = require('express')
// const bodyParser = require('body-parser')
const { getAllCards } = require('./controllers/garbagePail')
const app = express()

app.get('/garbagePail', getAllCards)

// app.post('/', bodyParser.json())






app.all('*', (request, response) => {
  return response.sendStatus(404)
})


app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337..')
})
