const models = require('../models')

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

const getBKidByName = async (request, response) => {
  try {
    const { name } = request.params
    const bKid = await models.CardListBs.findOne({
      where: {
        name: { [models.Op.like]: `%${name}%` }
      }
    })

    return bKid
      ? response.send(bKid)
      : response.status(404).send('Sorry not found')
  } catch (error) {
    return response.status(500).send('Unable to retrieve kid, please try again')
  }
}
const saveNewKid = async (request, response) => {
  const {
    name, list
  } = request.body

  if (!name || !list) {
    // eslint-disable-next-line max-len
    return response.status(400).send('Must have name & list')
  }
  const newKid = await models.userTables.create({
    name, list
  })
  // eslint-disable-next-line max-len

  return response.status(201).send(newKid)
}



module.exports = { getBListWithSeriesData, getBKidByName, saveNewKid }
