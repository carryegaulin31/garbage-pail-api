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
  const { name } = request.params
  const bKid = await models.CardListBs.findOne({
    where: {
      name: { [models.Op.like]: `%${name}%` }
    }
  })

  return bKid
    ? response.send(bKid)
    : response.status(404).send('Sorry not found')
}


module.exports = { getBListWithSeriesData, getBKidByName }


