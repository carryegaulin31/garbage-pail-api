const cards = require('../garbagePail')

const getAllCards = (request, response) => {
  return response.send(cards)
}


module.exports = { getAllCards }
