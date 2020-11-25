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

const saveNewKid = async (request, response) => {
  const {
    name, series, releaseDate, cardNumber, AorB
  } = request.body

  if (!name || !series || !releaseDate || !cardNumber || !AorB) {
    return response.status(400).send('The following fields are required: name, movie, slug')
  }

  const newKid = await models.villains.create({ name, movie, slug })

  return response.status(201).send(newKid)
}

module.exports = { getAllCards, getKidByName, saveNewKid }
