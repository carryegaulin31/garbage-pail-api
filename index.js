const express = require('express')
const bodyParser = require('body-parser')
const { getAllKids, getKidByName, saveNewKid } = require('./controllers/garbagePail')
const app = express()

app.use(express.static('public'))

app.set('view engine', 'pug')

app.get('/', (request, response) => {
  return response.render('index')
})

app.get('/garbagePail', getAllKids)

app.get('/garbagePail/:name', getKidByName)


app.post('/garbagePail', bodyParser.json(), saveNewKid)


app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337..')
})
