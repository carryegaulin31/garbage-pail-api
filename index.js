/* eslint-disable no-console */
const express = require('express')
const bodyParser = require('body-parser')
const { getAListWithSeriesData, getAKidByName, saveNewKid } = require('./controllers/cardListAs')
const { getBKidByName, getBListWithSeriesData, } = require('./controllers/cardListBs')
const { getAllSeriesData } = require('./controllers/seriesDatas')
const app = express()

app.use(express.static('public'))

app.set('view engine', 'pug')

app.get('/', (request, response) => {
  return response.render('index')
})

app.get('/aList', getAListWithSeriesData)
app.get('/A/:name', getAKidByName)
app.get('/B/:name', getBKidByName)
app.get('/blist', getBListWithSeriesData)
app.get('/series', getAllSeriesData)
app.post('/garbagePail', bodyParser.json(), saveNewKid)


app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log(process.env.DB_USERNAME)
  console.log('Listening on port 1337..')
})
