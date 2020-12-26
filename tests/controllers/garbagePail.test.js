const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const models = require('../../models')
const { describe, it } = require('mocha')
const {
  kidsListA, kidsListB, singleAKid, singleBKid, newKid, seriesDataMock
} = require('../mocks/garbagePail')
const { getAKidByName, getAListWithSeriesData, saveNewKid } = require('../../controllers/cardListA')
const { getBKidByName, getBListWithSeriesData } = require('../../controllers/cardListBs')
const { getAllSeriesData } = require('../../controllers/seriesDatas')

chai.use(sinonChai)
const { expect } = chai

describe('Controllers - cardListA', () => {
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
    describe('getAListWithSeriesData', () => {
      it('retrieves a list of all A kids from the database and calls response.send() with the list', async () => {
        const stubbedFindAll = sinon.stub(models.CardListA, 'findAll').returns(kidsListA)

        await getAListWithSeriesData({}, response)

        expect(stubbedFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListA)
      })
    })

    describe('getBListWithSeriesData', () => {
      it('retrieves a list of all the B kids from the database and calls response.send() with it', async () => {
        const stubbedFindAll = sinon.stub(models.CardListBs, 'findAll').returns(kidsListB)

        await getBListWithSeriesData({}, response)

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

    describe('getAKidByName', () => {
      // eslint-disable-next-line max-len
      it('retrieves the kid associated with the provided name from the database and calls response.send with it', async () => {
        stubbedFindOne.returns(singleAKid)
        const request = { params: { name: 'Wrinkly Randy' } }

        await getAKidByName(request, response)

        expect(stubbedFindOne).to.have.been.calledWith({ where: { name: 'Wrinkly Randy' } })
        expect(stubbedSend).to.have.been.calledWith(singleAKid)
      })
    })

    it('returns a 404 when no kid is found', async () => {
      stubbedFindOne.returns(null)
      const request = { params: { name: 'not-found' } }

      await getAKidByName(request, response)

      expect(stubbedFindOne).to.have.been.calledWith({ where: { name: 'not-found' } })
      expect(stubbedStatus).to.have.been.calledWith(404)
      expect(stubbedStatusSend).to.have.been.calledWith('Sorry not found')
    })

    it('returns a 500 with an error message when the database call throws an error', async () => {
      stubbedFindOne.throws('ERROR!')
      const request = { params: { name: 'throw-error' } }

      await getAKidByName(request, response)

      expect(stubbedFindOne).to.have.been.calledWith({ where: { name: 'throw-error' } })
      expect(stubbedStatus).to.have.been.calledWith(500)
      expect(stubbedStatusSend).to.have.been.calledWith('Unable to retrieve')
    })

    describe('getBKidByName', () => {
      // eslint-disable-next-line max-len
      it('retrieves the kid associated with the provided name from the database and calls response.send with it', async () => {
        stubbedFindOne.returns(singleBKid)
        const request = { params: { name: 'Scary Carrie' } }

        await getAKidByName(request, response)

        expect(stubbedFindOne).to.have.been.calledWith({ where: { name: 'Scary Carrie' } })
        expect(stubbedSend).to.have.been.calledWith(singleBKid)
      })
    })

    it('returns a 404 when no kid is found', async () => {
      stubbedFindOne.returns(null)
      const request = { params: { name: 'not-found' } }

      await getBKidByName(request, response)

      expect(stubbedFindOne).to.have.been.calledWith({ where: { name: 'not-found' } })
      expect(stubbedStatus).to.have.been.calledWith(404)
      expect(stubbedStatusSend).to.have.been.calledWith('Sorry not found')
    })

    it('returns a 500 with an error message when the database call throws an error', async () => {
      stubbedFindOne.throws('ERROR!')
      const request = { params: { name: 'throw-error' } }

      await getBKidByName(request, response)

      expect(stubbedFindOne).to.have.been.calledWith({ where: { name: 'throw-error' } })
      expect(stubbedStatus).to.have.been.calledWith(500)
      expect(stubbedStatusSend).to.have.been.calledWith('Unable to retrieve')
    })

    describe('saveNewKid', () => {
      // eslint-disable-next-line max-len
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
