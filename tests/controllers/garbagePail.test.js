const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const models = require('../../models')
const {
  afterEach, before, beforeEach, after, describe, it
} = require('mocha')
// const { describe, it } = require('mocha')
const {
  kidsListA, kidsListB, singleAKid, singleBKid, newKid, seriesDataMock
} = require('../mocks/garbagePail')
const { getAKidByName, getAListWithSeriesData, saveNewKid } = require('../../controllers/cardListA')
const { getBKidByName, getBListWithSeriesData } = require('../../controllers/cardListBs')
const { getAllSeriesData, deleteKid } = require('../../controllers/seriesDatas')

chai.use(sinonChai)
const { expect } = chai

describe('Controllers - cardListA', () => {
  let sandbox
  let stubbedSend
  let response
  let request
  let stubbedSendStatus
  let stubbedStatusSend
  let stubbedStatus
  let stubbedcardListAFindOne
  let stubbedcardListAFindAll
  let stubbedcardListACreate
  let stubbedcardListBsFindOne
  let stubbedcardListBsFindAll
  let stubbedseriesDatasFindAll
  let stubbedseriesDatasDestroy

  before(() => {
    sandbox = sinon.createSandbox()
    stubbedcardListAFindOne = sandbox.stub(models.cardListA, 'findOne')
    stubbedcardListAFindAll = sandbox.stub(models.cardListA, 'findAll')
    stubbedcardListADestroy = sandbox.stub(models.cardListA, 'destroy')
    stubbedseriesDatasDestroy = sandbox.stub(models.seriesDatas, 'destroy')
    stubbedcardListBsFindOne = sandbox.stub(models.cardListBs, 'findOne')
    stubbedcardListBsFindAll = sandbox.stub(models.cardListBs, 'findAll')
    stubbedcardListBsDestroy = sandbox.stub(models.cardListBs, 'destroy')
    stubbedseriesDatasFindAll = sandbox.stub(models.seriesDatas, 'findAll')
    stubbedseriesDatasDestroy = sandbox.stub(models.seriesDatas, 'destroy')
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
  describe('Controllers - cardListA', () => {
    describe('getAListWithSeriesData', () => {
      it('retrieves a list of all A kids from the database and calls response.send() with the list', async () => {
        stubbedcardListAFindAll = sinon.stub(models.cardListA, 'findAll').returns(kidsListA)
        await getAListWithSeriesData({}, response)
        expect(stubbedcardListAFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListA)
      })
    })
    describe('getAKidByName', () => {
      // eslint-disable-next-line max-len
      it('retrieves the kid associated with the provided name from the database and calls response.send with it', async () => {
        stubbedcardListAFindOne.returns(singleAKid)
        const request = { params: { name: 'Wrinkly Randy' } }

        await getAKidByName(request, response)

        expect(stubbedcardListAFindOne).to.have.been.calledWith({ where: { name: 'Wrinkly Randy' } })
        expect(stubbedSend).to.have.been.calledWith(singleAKid)
      })
      it('returns a 404 when no kid is found', async () => {
        stubbedcardListAFindOne.returns(null)
        const request = { params: { name: 'not-found' } }

        await getAKidByName(request, response)
        expect(stubbedcardListAFindOne).to.have.been.calledWith({ where: { name: 'not-found' } })
        expect(stubbedStatus).to.have.been.calledWith(404)
        expect(stubbedStatusSend).to.have.been.calledWith('Sorry not found')
      })
      it('returns a 500 with an error message when the database call throws an error', async () => {
        stubbedcardListAFindOne.throws('ERROR!')
        const request = { params: { name: 'throw-error' } }

        await getAKidByName(request, response)
        expect(stubbedcardListAFindOne).to.have.been.calledWith({ where: { name: 'throw-error' } })
        expect(stubbedStatus).to.have.been.calledWith(500)
        expect(stubbedStatusSend).to.have.been.calledWith('Unable to retrieve')
      })
    })
    describe('saveNewKid', () => {
      // eslint-disable-next-line max-len
      it('accepts new kid details and saves them as a new kid, returning the saved record with a 201 status', async () => {
        const request = { body: newKid }
        const stubbedCreate = sinon.stub(models.userTables, 'create').returns(newKid)

        await saveNewKid(request, response)
        expect(stubbedCreate).to.have.been.calledWith(newKid)
        expect(stubbedStatus).to.have.been.calledWith(201)
        expect(stubbedStatusSend).to.have.been.calledWith(newKid)
      })
    })
    describe('Controllers - cardListBs', () => {
      describe('getBListWithSeriesData', () => {
        it('retrieves a list of all the B kids from the database and calls response.send() with it', async () => {
          stubbedcardListBsFindAll = sinon.stub(models.cardListBs, 'findAll').returns(kidsListB)
          await getBListWithSeriesData({}, response)
          expect(stubbedcardListBsFindAll).to.have.callCount(1)
          expect(stubbedSend).to.have.been.calledWith(kidsListB)
        })
      })
      describe('getBKidByName', () => {
        // eslint-disable-next-line max-len
        it('retrieves the kid associated with the provided name from the database and calls response.send with it', async () => {
          stubbedcardListBsFindOne.returns(singleBKid)
          const request = { params: { name: 'Scary Carrie' } }

          await getBKidByName(request, response)
          expect(stubbedcardListBsFindOne).to.have.been.calledWith({
            where: { name: request.params.name },
            include: [{ model: models.SeriesDatas }],
          })
          expect(stubbedSend).to.have.been.calledWith(singleBKid, { include: [(seriesDataMock)] })
        })
      })
      it('returns a 404 when no kid is found', async () => {
        stubbedcardListBsFindOne.returns(null)
        const request = { params: { name: 'not-found' } }

        await getBKidByName(request, response)
        expect(stubbedcardListBsFindOne).to.have.been.calledWith({ where: { name: 'not-found' } })
        expect(stubbedStatus).to.have.been.calledWith(404)
        expect(stubbedStatusSend).to.have.been.calledWith('Sorry not found')
      })
      it('returns a 500 with an error message when the database call throws an error', async () => {
        stubbedcardListBsFindOne.throws('ERROR!')
        const request = { params: { name: 'throw-error' } }

        await getBKidByName(request, response)
        expect(stubbedcardListBsFindOne).to.have.been.calledWith({ where: { name: 'throw-error' } })
        expect(stubbedStatus).to.have.been.calledWith(500)
        expect(stubbedStatusSend).to.have.been.calledWith('Unable to retrieve')
      })
      describe('Controllers - seriesDatas', () => {
        describe('getAllSeriesData', () => {
          it('retrieves a list of all series data from the database and calls response.send() with the list', async () => {
            stubbedcardListBsFindAll = sinon.stub(models.seriesDatas, 'findAll').returns(seriesDataMock)
            await getAllSeriesData({}, response)
            expect(stubbedcardListBsFindAll).to.have.callCount(1)
            expect(stubbedSend).to.have.been.calledWith(seriesDataMock)
          })
        })
        describe('deleteKid', () => {
          it('deletes a kid from the database.', async () => {
            stubbedcardListBsFindOne.returns(deleteKid)
            await deleteKid(request, response)
            expect(stubbedSend).to.have.been.calledWith(`Successfully deleted the name: ${request.params.name}.`)
          })
          it('returns a 404 status and a message when no kid is found matching the id provided by the user.', async () => {
            stubbedseriesDatasDestroy.returns(null)
            await deleteKid(request, response)
            expect(stubbedseriesDatasDestroy).to.have.callCount(0)
            expect(stubbedStatus).to.have.been.calledWith(404)
            expect(stubbedStatusSend).to.have.been.calledWith(`No matching kid with name: ${request.params.id}`)
          })
          it('returns a 500 status with a message when the database call throws an error.', async () => {
            stubbedseriesDatasDestroy.throws('error')
            await deleteKid({}, response)
            expect(stubbedseriesDatasDestroy).to.have.callCount(0)
            expect(stubbedStatus).to.have.been.calledWith(500)
            expect(stubbedStatusSend).to.have.been.calledWith('Unknown error while deleting kid, please try again')
          })
        })
      })
    })
  })
})
