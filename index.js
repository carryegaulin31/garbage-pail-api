const express = require('express')
const bodyParser = require('body-parser')
const { getAllAKids } = require('./controllers/cardListA')
const { getAllBKids } = require('./controllers/cardListBs')
const { getAllSeriesData } = require('./controllers/seriesDatas')
const app = express()

app.use(express.static('public'))

app.set('view engine', 'pug')

app.get('/', (request, response) => {
  return response.render('index')
})

app.get('/aList', getAllAKids)
app.get('/bList', getAllBKids)
app.get('/series', getAllSeriesData)




// app.post('/garbagePail', bodyParser.json(), saveNewKid)


app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337..')
})
