const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const { describe, it } = require('mocha')
const { kidsList, singleKid } = require('../mocks/garbagePail')
const { getAllAKids, getBListWithSeriesDat, saveNewKid } = require('../../controllers/garbagePail')

chai.use(sinonChai)
const { expect } = chai
const models = require('../models')

describe('Controllers - garbagePail', () => {
  describe('getAllKids', () => {
    it('retrieves a list of kids from the database and calls response.send() with the list', async () => {
      const stubbedFindAll = sinon.stub(models.GPK, 'findAll').returns(kidsList)
      const stubbedSend = sinon.stub()
      const response = { send: stubbedSend }

      await getAllKids({}, response)

      expect(stubbedFindAll).to.have.callCount(1)
      expect(stubbedSend).to.have.been.calledWith(kidsList)
    })
  })

  describe('getKidByName', () => {
    it('retrieves the kid associated with the provided slug from the database and calls response.send with it', async () => {
      const request = { params: { slug: 'Scary Carrie' } }
      const stubbedSend = sinon.stub()
      const response = { send: stubbedSend }
      const stubbedFindOne = sinon.stub(models.GPK, 'findOne').returns(singleKid)

      await getKidByName(request, response)
    })
  })


  describe('saveNewKid', () => { })
  it('accepts new kid details and saves them as a new kid, returning the saved record with a 201 status', async () => {
    const request = {}
    const response = {}

    await saveNewKid(request, response)
  })
})
