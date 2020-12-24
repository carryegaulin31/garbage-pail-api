const models = require('../models')

const getAllAKids = async (request, response) => {
  const allAKids = await models.CardListA.findAll()

  return allAKids
    ? response.send(allAKids)
    : response.sendStatus(404)
}

const getAListWithSeriesData = async (request, response) => {
  const aListWithSeriesData = await models.CardListBs.findAll({

    include: [{
      model: models.SeriesDatas,
      through: { attributes: [] }
    }]
  })

  return aListWithSeriesData
    ? response.send(aListWithSeriesData)
    : response.sendStatus(404)
}

const saveNewKid = async (request, response) => {
  const {
    name, list, seriesNo, releaseDate, cardNo
  } = request.body

  if (!name || !list || !seriesNo || !releaseDate || !cardNo) {
    // eslint-disable-next-line max-len
    return response.status(400).send('The following fields are required: location, mascot, abbreviation, conference, division')
  }
  const newKid = await models.userTables.create({
    name, list, seriesNo, releaseDate, cardNo
  })
  // eslint-disable-next-line max-len

  return response.status(201).send(newKid)
}


module.exports = { getAllAKids, getAListWithSeriesData, saveNewKid }
