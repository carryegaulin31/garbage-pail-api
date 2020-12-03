const Sequelize = require('sequelize')
const kidsModel = require('./GarbagePail')

const connection = new Sequelize('GarbagePail', 'GarbagePail', 'Dalla$$', {
  host: 'localhost', dialect: 'mysql'
})

const kids = kidsModel(connection, Sequelize)

module.exports = { kids }
