const models = require('../models')

const getAllSeriesData = async (request, response) => {
  const allSeriesData = await models.SeriesDatas.findAll()

  return allSeriesData
    ? response.send(allSeriesData)
    : response.sendStatus(404)
}

const deleteKid = async (request, response) => {
  models.destroy({
    where: {
      name: request.params.name
    }
  })
    .then(function (deletedRecord) {
      if (deletedRecord === 1) {
        response.status(200).json({ message: ' Deleted successfully' })
      }
      else {
        response.status(404).json({ message: 'record not found' })
      }
    })
    .catch(function (error) {
      response.status(500).json(error)
    })
}


module.exports = { getAllSeriesData, deleteKid }
