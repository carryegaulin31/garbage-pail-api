const cards = require('../garbagePail')
const models = require('../models')

const getAllCards = async (request, response) => {
  try {
    const kids = await models.kids.findAll()

    return response.send(kids)
  } catch (error) {
    return response.status(404).send('Sorry not found')
  }
}


module.exports = { getAllCards }
