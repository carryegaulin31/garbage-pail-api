/* eslint-disable max-len */
const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const models = require('../../models')
const {
  afterEach, before, beforeEach, after, describe, it
} = require('mocha')

const { seriesDataMock } = require('../mocks/garbagePail')

const { getAllSeriesData } = require('../../controllers/seriesDatas')

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
  let stubbedSeriesDatasFindAll


  before(() => {
    sandbox = sinon.createSandbox()
    stubbedSeriesDatasFindAll = sandbox.stub(models.SeriesDatas, 'findAll')
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


  describe('Controllers - seriesDatas', () => {
    describe('getAllSeriesData', () => {
      it('retrieves a list of all series data from the database and calls response.send() with the list', async () => {
        stubbedSeriesDatasFindAll = sinon.stub(models.seriesDatas, 'findAll').returns(seriesDataMock)
        await getAllSeriesData({}, response)
        expect(stubbedSeriesDatasFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(seriesDataMock)
      })
    })
  })
})
