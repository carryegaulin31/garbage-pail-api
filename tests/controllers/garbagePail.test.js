/* eslint-disable max-len */
/* eslint-disable no-undef */
const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const models = require('../../models')
const {
  afterEach, before, beforeEach, describe, it
} = require('mocha')
// const { describe, it } = require('mocha')
const {
  kidsListA, kidsListB, singleAKid, singleBKid, newKid, seriesDataMock
} = require('../mocks/garbagePail')
const { getAKidByName, getAListWithSeriesData, saveNewKid } = require('../../controllers/cardListA')
const { getBKidByName, getBListWithSeriesData } = require('../../controllers/cardListBs')
const { getAllSeriesData } = require('../../controllers/seriesDatas')

chai.use(sinonChai)
const { expect } = chai

describe('Controllers - cardListA, cardListBs, seriesDatas', () => {
  let sandbox
  let stubbedFindOne
  let stubbedSend
  let response
  let stubbedSendStatus
  let stubbedStatusSend
  let stubbedStatus
  let stubbedDestroy

  before(() => {
    sandbox = sinon.createSandbox()

    stubbedFindOne = sandbox.stub(models.cardListA, models.cardListBs, models.seriesDatas, 'findOne')
    stubbedDestroy = sandbox.stub(models.cardListA, models.cardListBs, models.seriesDatas, 'destroy')
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

  describe('Controllers - cardListA', () => {
    describe('getAListWithSeriesData', () => {
      it('retrieves a list of all A kids from the database and calls response.send() with the list', async () => {
        const stubbedFindAll = sinon.stub(models.cardListA, 'findAll').returns(kidsListA)

        await getAListWithSeriesData({}, response)

        expect(stubbedFindAll).to.have.callCount(1)
        expect(stubbedSend).to.have.been.calledWith(kidsListA)
      })
    })

    describe('Controllers - cardListBs', () => {
      describe('getBListWithSeriesData', () => {
        it('retrieves a list of all the B kids from the database and calls response.send() with it', async () => {
          const stubbedFindAll = sinon.stub(models.cardListBs, 'findAll').returns(kidsListB)

          await getBListWithSeriesData({}, response)

          expect(stubbedFindAll).to.have.callCount(1)
          expect(stubbedSend).to.have.been.calledWith(kidsListB)
        })
      })

      describe('Controllers - seriesDatas', () => {
        describe('getAllSeriesData', () => {
          it('retrieves a list of all series data from the database and calls response.send() with the list', async () => {
            const stubbedFindAll = sinon.stub(models.seriesDatas, 'findAll').returns(seriesDataMock)

            await getAllSeriesData({}, response)

            expect(stubbedFindAll).to.have.callCount(1)
            expect(stubbedSend).to.have.been.calledWith(seriesDataMock)
          })
        })


        describe('Controllers - cardListA', () => {
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

          describe('Controllers - cardListB', () => {
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
            describe('Controllers - cardListA', () => {
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

                describe('Controllers - seriesDatas', () => {
                  describe('deleteKid', () => {
                    it('deletes a kid from the database.', async () => {
                      stubbedFindOne.returns(deleteKid)
                      await deleteKid(request, response)
                      expect(stubbedSend).to.have.been.calledWith(`Successfully deleted the name: ${request.params.name}.`)
                    })
                    it('returns a 404 status and a message when no kid is found matching the id provided by the user.', async () => {
                      stubbedFindOne.returns(null)
                      await deleteKid(request, response)
                      expect(stubbedDestroy).to.have.callCount(0)
                      expect(stubbedStatus).to.have.been.calledWith(404)
                      expect(stubbedStatusSend).to.have.been.calledWith(`No matching kid with name: ${request.params.id}`)
                    })
                    it('returns a 500 status with a message when the database call throws an error.', async () => {
                      stubbedFindOne.throws('error')
                      await deleteKid({}, response)
                      expect(stubbedDestroy).to.have.callCount(0)
                      expect(stubbedStatus).to.have.been.calledWith(500)
                      expect(stubbedStatusSend).to.have.been.calledWith('Unknown error while deleting kid, please try again')
                    })
                  })
                })
              })
            })
          })
        })
      })
    })
  })
})
