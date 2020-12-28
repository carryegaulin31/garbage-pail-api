const models = require('../models')

const getAListWithSeriesData = async (request, response) => {
  const aListWithSeriesData = await models.CardListAs.findAll({

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
  try {
    const { name } = request.params
    const aKid = await models.CardListAs.findOne({
      where: {
        name: { [models.Op.like]: `%${name}%` }
      }
    })

    return aKid
      ? response.send(aKid)
      : response.status(404).send('Sorry not found')
  } catch (error) {
    return response.status(500).send('Unable to retrieve kid, please try again')
  }
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
