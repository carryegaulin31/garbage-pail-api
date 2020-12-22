const models = require('../models')

const getAllAKids = async (request, response) => {
  const allAKids = await models.CardListA.findAll()

  return allAKids
    ? response.send(allAKids)
    : response.sendStatus(404)
}

module.exports = { getAllAKids }
