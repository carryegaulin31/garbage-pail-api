const express = require('express')

const { getAllCards, getKidByName } = require('./controllers/garbagePail')
const app = express()

app.use(express.static('public'))

app.set('view engine', 'pug')

app.get('/', (request, response) => {
  return response.render('index')
})

app.get('/garbagePail', getAllCards)

app.get('/garbagePail/:input', getKidByName)







app.all('*', (request, response) => {
  return response.sendStatus(404)
})


app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337..')
})
