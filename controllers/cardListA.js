const models = require('../models')

const getAllKids = async (request, response) => {
  const { id } = request.params
  const allKids = await models.CardListA.findAll({
    where: { id },
    include: [{
      model: models.CardListB,
    }]
  })

  return allKids
    ? response.send(allKids)
    : response.sendStatus(404)
}



module.exports = { getAllKids }
