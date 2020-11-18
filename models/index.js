const Sequelize = require('sequelize')
const kidsModel = require('./kids')

const connection = new Sequelize('GarbagePail', 'GarbagePail', 'Dalla$$', {
  host: 'localhost', dialect: 'mysql'
})

const Kids = kidsModel(connection, Sequelize)

module.exports = { Kids }