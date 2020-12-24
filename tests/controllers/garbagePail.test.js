const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const models = require('../../models')
// const { describe, it } = require('mocha')
const { kidsListA, kidsListB, newKid, seriesDataMock } = require('../mocks/garbagePail')
const { getAllAKids, getAListWithSeriesData, saveNewKid } = require('./controllers/cardListA')
const { getAllBKids, getBListWithSeriesData } = require('./controllers/cardListBs')
const { getAllSeriesData } = require('./controllers/seriesDatas')

chai.use(sinonChai)
const { expect } = chai

describe('Controllers - teams', () => {
  let sandbox
  let stubbedFindOne
  let stubbedSend
  let response
  let stubbedSendStatus
  let stubbedStatusSend
  let stubbedStatus

  before(() => {
    sandbox = sinon.createSandbox()

    stubbedFindOne = sandbox.stub(models.CardListA, models.CardListBs, models.SeriesDatas, 'findOne')

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

  describe('Controllers - garbagePail', () => {
    describe('getAllAKids', () => {
      it('retrieves a list of all A kids from the database and calls response.send() with the list', async () => {
        const stubbedFindAll = sinon.stub(models.CardListA, 'findAll').returns(kidsListA)

        await getAllAKids({}, response)

        expect(stubbedFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListA)
      })
    })

    describe('getAllBKids', () => {
      it('retrieves a list of all the B kids from the database and calls response.send() with it', async () => {
        const stubbedFindAll = sinon.stub(models.CardListBs, 'findAll').returns(kidsListB)

        await getAllBKids({}, response)

        expect(stubbedFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListB)
      })
    })

    describe('getAllSeriesData', () => {
      it('retrieves a list of all series data from the database and calls response.send() with the list', async () => {
        const stubbedFindAll = sinon.stub(models.SeriesDatas, 'findAll').returns(seriesDataMock)

        await getAllSeriesData({}, response)

        expect(stubbedFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(seriesDataMock)
      })
    })

    describe('getAListWithSeriesData', () => {
      it('retrieves a list of all series data from the database and calls response.send() with the list', async () => {
        // eslint-disable-next-line max-len
        const stubbedFindAll = sinon.stub(models.CardListA, models.SeriesDatas, 'findAll').returns(kidsListA, seriesDataMock)
        const stubbedSend = sinon.stub()
        const response = { send: stubbedSend }

        await getAListWithSeriesData({}, response)

        expect(stubbedFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListA, seriesDataMock)
      })
    })

    describe('getBListWithSeriesData', () => {
      it('retrieves a list of all series data from the database and calls response.send() with the list', async () => {
        // eslint-disable-next-line max-len
        const stubbedFindAll = sinon.stub(models.CardListBs, models.SeriesDatas, 'findAll').returns(kidsListB, seriesDataMock)
        const stubbedSend = sinon.stub()
        const response = { send: stubbedSend }

        await getBListWithSeriesData({}, response)

        expect(stubbedFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListB, seriesDataMock)
      })
    })

    describe('saveNewKid', () => {
      it('accepts new kid details and saves them as a new kid, returning the saved record with a 201 status', async () => {
        const request = { body: newKid }
        const stubbedCreate = sinon.stub(models.UserTables, 'create').returns(newKid)

        await saveNewKid(request, response)

        expect(stubbedCreate).to.have.been.calledWith(newKid)
        expect(stubbedStatus).to.have.been.calledWith(201)
        expect(stubbedStatusSend).to.have.been.calledWith(newKid)
      })
    })
  })
})
