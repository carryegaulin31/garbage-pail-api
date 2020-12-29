/* eslint-disable no-undef */
/* eslint-disable max-len */
const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const models = require('../../models')
const {
  afterEach, before, beforeEach, after, describe, it
} = require('mocha')

const {
  kidsListB, singleBKid, newKid
} = require('../mocks/garbagePail')

const { getBKidByName, getBListWithSeriesData } = require('../../controllers/cardListBs')

chai.use(sinonChai)
const { expect } = chai

describe('Controllers - cardListBs', () => {
  let sandbox
  let stubbedSend
  let response
  let request
  let stubbedSendStatus
  let stubbedStatusSend
  let stubbedStatus

  let stubbedCardListBsFindOne
  let stubbedCardListBsFindAll
  let stubbedCardListBsCreate


  before(() => {
    sandbox = sinon.createSandbox()
    stubbedcardListBFindAll = sandbox.stub(models.CardListBs, 'findAll')
    stubbedcardListBsFindOne = sandbox.stub(models.CardListBs, 'findOne')
    stubbedcardListBCreate = sandbox.stub(models.CardListBs, 'create')
    stubbedSend = sandbox.stub()
    stubbedSendStatus = sandbox.stub()
    stubbedStatusSend = sandbox.stub()
    stubbedStatus = sandbox.stub()
    response = {
      send: stubbedSend,
      sendStatus: stubbedSendStatus,
      status: stubbedStatus,
    }
  })
  beforeEach(() => {
    stubbedStatus.returns({ send: stubbedStatusSend })
  })
  afterEach(() => {
    sandbox.reset()
  })
  after(() => {
    sandbox.restore()
  })


  describe('Controllers - cardListBs', () => {
    describe('getBListWithSeriesData', () => {
      it('retrieves a list of all the B kids from the database and calls response.send() with it', async () => {
        stubbedCardListBsFindAll = sinon.stub(models.cardListBs, 'findAll').returns(kidsListB)
        await getBListWithSeriesData({}, response)
        expect(stubbedCardListBsFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListB)
      })
    })
    describe('getBKidByName', () => {
      // eslint-disable-next-line max-len
      it('retrieves the kid associated with the provided name from the database and calls response.send with it', async () => {
        stubbedcardListBsFindOne.returns(singleBKid)
        const request = { params: { name: 'Scary Carrie' } }

        await getBKidByName(request, response)
        expect(stubbedCardListBsFindOne).to.have.been.calledWith({
          where: { name: request.params.name },
          include: [{ model: models.SeriesDatas }],
        })
        expect(stubbedSend).to.have.been.calledWith(singleBKid, { include: [(seriesDataMock)] })
      })
    })
    it('returns a 404 when no kid is found', async () => {
      stubbedCardListBsFindOne.returns(null)
      const request = { params: { name: 'not-found' } }

      await getBKidByName(request, response)
      expect(stubbedCardListBsFindOne).to.have.been.calledWith({ where: { name: 'not-found' } })
      expect(stubbedStatus).to.have.been.calledWith(404)
      expect(stubbedStatusSend).to.have.been.calledWith('Sorry not found')
    })
    it('returns a 500 with an error message when the database call throws an error', async () => {
      stubbedCardListBsFindOne.throws('ERROR!')
      const request = { params: { name: 'throw-error' } }

      await getBKidByName(request, response)
      expect(stubbedCardListBsFindOne).to.have.been.calledWith({ where: { name: 'throw-error' } })
      expect(stubbedStatus).to.have.been.calledWith(500)
      expect(stubbedStatusSend).to.have.been.calledWith('Unable to retrieve')
    })
    describe('saveNewKid', () => {
      // eslint-disable-next-line max-len
      it('accepts new kid details and saves them as a new kid, returning the saved record with a 201 status', async () => {
        const request = { body: newKid }

        stubbedCardListBsCreate.returns(newKid)

        await saveNewKid(request, response)
        expect(stubbedCreate).to.have.been.calledWith(newKid)
        expect(stubbedStatus).to.have.been.calledWith(201)
        expect(stubbedStatusSend).to.have.been.calledWith(newKid)
      })
    })
  })
})

