const models = require('../models')

/* const getAllBKids = async (request, response) => {
  const allBKids = await models.CardListB.findAll()

  return allBKids
    ? response.send(allBKids)
    : response.sendStatus(404)
}
const getBListWithSeriesData = async (request, response) => {
  const { id } = request.params
  const bListWithSeriesData = await models.Genres.findOne({
    where: { id },
    include: [{
      model: models.SeriesData,
    }]
  })

  return bListWithSeriesData
    ? response.send(bListWithSeriesData)
    : response.sendStatus(404)
}

module.exports = { getBListWithSeriesData } */
