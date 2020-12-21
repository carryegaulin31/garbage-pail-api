const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const { describe, it } = require('mocha')
const { kidsList, singleKid } = require('../mocks/kidsMock')
const { getAllKids, getKidByName, saveNewKid } = require('../../controllers/garbagePail')

chai.use(sinonChai)
const { expect } = chai

describe('Controllers - garbagePail', () => {
  describe('getAllKids', () => {
    it('retrieves a list of kids from the database and calls response.send() with the list', async () => {
      const stubbedFindAll = sinon.stub(models.kids, 'findAll').returns(kidsList)
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
       const stubbedFindOne = sinon.stub(models.kids, 'findOne').returns(singleKid)
 
       await getKidByName(request, response)
     })
   })
   

  describe('saveNewKid', () => { })
})
