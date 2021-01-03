const models = require('../models')

const getAList = async (request, response) => {
  const aList = await models.CardListAs.findAll()


  return aList
    ? response.send(aList)
    : response.sendStatus(404)
}

const getAKidByName = async (request, response) => {
  const { name } = request.params
  const aKid = await models.CardListAs.findOne({
    where: {
      name: { [models.Op.like]: `%${name}%` },
    }
  })

  return aKid
    ? response.send(aKid)
    : response.status(500).send('Unable to retrieve kid, please try again')
}


const saveNewKid = async (request, response) => {
  const {
    name, list
  } = request.body

  if (!name || !list) {
    // eslint-disable-next-line max-len
    return response.status(400).send('Must have name & list')
  }
  const newKid = await models.CardListAs.create({
    name, list
  })
  // eslint-disable-next-line max-len

  return response.status(201).send(newKid)
}
const deleteAKid = async (request, response) => {
  try {
    const isDeleted = await models.CardListAs.destroy({
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



module.exports = { getAList, getAKidByName, saveNewKid, deleteAKid }
