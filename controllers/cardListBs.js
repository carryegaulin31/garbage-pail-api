const models = require('../models')

const getAllBKids = async (request, response) => {
  const allBKids = await models.CardListBs.findAll()

  return allBKids
    ? response.send(allBKids)
    : response.sendStatus(404)
}

const getBListWithSeriesData = async (request, response) => {
  const bListWithSeriesData = await models.CardListBs.findAll({

    include: [{
      model: models.SeriesDatas,
      through: { attributes: [] }
    }]
  })

  return bListWithSeriesData
    ? response.send(bListWithSeriesData)
    : response.sendStatus(404)
}

const getKidByName = async (request, response) => {
  try {
    const { name } = request.params

    const foundKid = await models.CardListA || models.CardListBs.findAll({
      where: {
        name: { [models.Op.like]: `%${name}%` },
      }
    })

    return foundKid
      ? response.send(foundKid)
      : response.sendStatus(404)
  } catch (error) {
    return response.status(500).send('Unable to retrieve hero, please try again')
  }
}

module.exports = { getBListWithSeriesData, getAllBKids, getKidByName }


