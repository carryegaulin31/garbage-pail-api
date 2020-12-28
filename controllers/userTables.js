const models = require('../models')

const getUserTables = async (request, response) => {
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

const getUserByName = async (request, response) => {
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

const deleteUser = async (request, response) => {
  try {
    const isDeleted = await models.SeriesData.destroy({
      where: {
        name: request.params.name
      }
    })

    return isDeleted === 1
      ? response.status(200).json({ message: ' Deleted successfully' })
      : response.status(404).json({ message: 'record not found' })
  } catch (error) {
    return response.status(500).json(error)
  }
}

module.exports = { getUserTables, getUserByName, deleteUser }
