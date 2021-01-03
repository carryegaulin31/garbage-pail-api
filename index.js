/* eslint-disable no-console */
const express = require('express')
const bodyParser = require('body-parser')
const { getAList, getAKidByName, saveNewKid, deleteAKid } = require('./controllers/cardListAs')
const { getBKidByName, getBList } = require('./controllers/cardListBs')
const { getAllSeriesData } = require('./controllers/seriesDatas')
const app = express()

app.use(express.static('public'))

app.set('view engine', 'pug')

app.get('/', (request, response) => {
  return response.render('index')
})

app.get('/aList', getAList)
app.get('/a/:name', getAKidByName)
app.get('/b/:name', getBKidByName)
app.get('/blist', getBList)
app.get('/series', getAllSeriesData)
app.post('/garbagePail', bodyParser.json(), saveNewKid)
app.delete('/garbagePail', deleteAKid)


app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log(process.env.DB_USERNAME)
  console.log('Listening on port 1337..')
})
