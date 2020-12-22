const models = require('../models')

const getAllBKids = async (request, response) => {
  const allBKids = await models.CardListB.findAll()

  return allBKids
    ? response.send(allBKids)
    : response.sendStatus(404)
}

const getBListWithSeriesData = async (request, response) => {
  const bListWithSeriesData = await models.CardListB.findAll({

    include: [{
      model: models.SeriesData,
    }]
  })

  return bListWithSeriesData
    ? response.send(bListWithSeriesData)
    : response.sendStatus(404)
}

module.exports = { getBListWithSeriesData, getAllBKids }


