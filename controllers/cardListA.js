const models = require('../models')

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

const getAKidByName = async (request, response) => {
  const { name } = request.params
  const aKid = await models.cardListA.findOne({
    where: {
      name: { [models.Op.like]: `%${name}%` }
    }
  })

  return aKid
    ? response.send(aKid)
    : response.status(404).send('Sorry not found')
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


module.exports = { getAListWithSeriesData, getAKidByName, saveNewKid }
