const chai = require('chai')
const sinon = require('sinon')
const sinonChai = require('sinon-chai')
const { describe, it } = require('mocha')
const { kidsList } = require('../mocks/heroes')

const { getAllCards, getKidByName, saveNewKid } = require('../../controllers/garbagePail')

chai.use(sinonChai)
const { expect } = chai
