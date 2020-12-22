const express = require('express')
// const bodyParser = require('body-parser')
const { getAllAKids } = require('./controllers/cardListA')
const { getBListWithSeriesData, getAllBKids } = require('./controllers/cardListB')
// const { getAllSeriesData } = require('./controllers/seriesData')
const app = express()

app.use(express.static('public'))

app.set('view engine', 'pug')

app.get('/', (request, response) => {
  return response.render('index')
})

app.get('/AList', getAllAKids)
app.get('/BList')
app.get('/BListSeries', getBListWithSeriesData)
// app.get('/series', getAllSeriesData)

// app.get('/garbagePail/:name', getKidByName)


// app.post('/garbagePail', bodyParser.json(), saveNewKid)


app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337..')
})
