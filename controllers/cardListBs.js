const models = require('../models')

const getBList = async (request, response) => {
  const bList = await models.CardListBs.findAll({

  })

  return bList
    ? response.send(bList)
    : response.sendStatus(404)
}

const getBKidByName = async (request, response) => {
  try {
    const { name } = request.params
    const bKid = await models.CardListBs.findOne({
      where: { name }
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
  const newKid = await models.CardListBs.create({
    name, list
  })
  // eslint-disable-next-line max-len

  return response.status(201).send(newKid)
}



module.exports = { getBList, getBKidByName, saveNewKid }
