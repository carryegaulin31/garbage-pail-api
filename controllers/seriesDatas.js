const models = require('../models')
const getAllSeriesData = async (request, response) => {
  const allSeriesData = await models.SeriesDatas.findAll()

  return allSeriesData
    ? response.send(allSeriesData)
    : response.sendStatus(404)
}



module.exports = { getAllSeriesData }
