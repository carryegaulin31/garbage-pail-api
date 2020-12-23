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
    }]
  })

  return bListWithSeriesData
    ? response.send(bListWithSeriesData)
    : response.sendStatus(404)
}

module.exports = { getBListWithSeriesData, getAllBKids }


