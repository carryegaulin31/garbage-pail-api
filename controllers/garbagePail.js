const kids = require('../garbagePail')
const models = require('../models')

const getAllCards = async (request, response) => {
  try {
    const cards = await models.kids.findAll()

    return response.send(cards)
  } catch (error) {
    return response.status(404).send('Sorry not found')
  }
}


module.exports = { getAllCards }
