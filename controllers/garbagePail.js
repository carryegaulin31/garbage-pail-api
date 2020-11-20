const models = require('../models')

const getAllCards = async (request, response) => {
  try {
    const kids = await models.kids.findAll()

    return response.send(kids)
  } catch (error) {
    return response.status(404).send('Sorry not found')
  }
}
const getKidByName = async (request, response) => {
  try {
    const { name } = request.params

    const kid = await models.kids.findOne({ where: { name } })

    return response.send(kid)
  } catch (error) {
    return response.status(404).send('Sorry not found')
  }
}


module.exports = { getAllCards, getKidByName }
