/* eslint-disable no-undef */
/* eslint-disable max-len */
/* eslint-disable no-unused-vars */
const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const models = require('../../models')
const {
  afterEach, before, beforeEach, after, describe, it
} = require('mocha')

const {
  kidsListA, singleAKid, newKid
} = require('../mocks/garbagePail')
const { getAKidByName, getAListWithSeriesData, saveNewKid } = require('../../controllers/cardListAs')

chai.use(sinonChai)
const { expect } = chai

describe('Controllers - cardListAs', () => {
  let sandbox
  let stubbedSend
  let response
  let request
  let stubbedSendStatus
  let stubbedStatusSend
  let stubbedStatus
  let stubbedCardListAsFindOne
  let stubbedCardListAsFindAll
  let stubbedCardListAsCreate
  let stubbedcardListBsFindOne
  let stubbedcardListBsFindAll
  let stubbedseriesDatasFindAll
  let stubbedseriesDatasDestroy

  before(() => {
    sandbox = sinon.createSandbox()
    stubbedcardListAsFindAll = sandbox.stub(models.CardListAs, 'findAll')
    stubbedcardListAsFindOne = sandbox.stub(models.CardListAs, 'findOne')
    stubbedcardListAsDestroy = sandbox.stub(models.CardListAs, 'destroy')
    stubbedcardListACreate = sandbox.stub(models.CardListAs, 'create')

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
        stubbedCardListAFindAll.returns(kidsListA)
        await getAListWithSeriesData({}, response)
        expect(stubbedCardListAFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListA)
      })
    })
    describe('getAKidByName', () => {
      // eslint-disable-next-line max-len
      it('retrieves the kid associated with the provided name from the database and calls response.send with it', async () => {
        stubbedCardListAFindOne.returns(singleAKid)
        const request = { params: { name: 'Wrinkly Randy' } }

        await getAKidByName(request, response)

        expect(stubbedCardListAFindOne).to.have.been.calledWith({ where: { name: 'Wrinkly Randy' } })
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

        stubbedCardListACreate.returns(newKid)

        await saveNewKid(request, response)
        expect(stubbedCreate).to.have.been.calledWith(newKid)
        expect(stubbedStatus).to.have.been.calledWith(201)
        expect(stubbedStatusSend).to.have.been.calledWith(newKid)
      })
    })
  })
})
