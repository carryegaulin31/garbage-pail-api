const Sequelize = require('sequelize')
const allConfigs = require('../config/sequelize')
const CardListAModel = require('./cardListA')
const CardListBModel = require('./cardListB')
const SeriesDataModel = require('./seriesData')
const CardASeriesLinkingModel = require('./cardASeriesLinking')
const CardBSeriesLinkingModel = require('./cardBSeriesLinking')
const cardListA = require('./cardListA')
const seriesData = require('./seriesData')
const cardListB = require('./cardListB')
const cardASeriesLinking = require('./cardASeriesLinking')
const cardBSeriesLinking = require('./cardBSeriesLinking')

const environment = process.env.NODE_ENV || 'development'
const config = allConfigs[environment]

const connection = new Sequelize(config.database, config.username, config.password, {
  host: config.host, dialect: config.dialect
})

const CardListA = CardListAModel(connection, Sequelize)
const CardListB = CardListBModel(connection, Sequelize)
const SeriesData = SeriesDataModel(connection, Sequelize)
const CardASeriesLinking = CardASeriesLinkingModel(connection, Sequelize, cardListA, seriesData)
const CardBSeriesLinking = CardBSeriesLinkingModel(connection, Sequelize, cardListB, seriesData)

SeriesData.belongsTo(CardListA, { through: CardASeriesLinking })
SeriesData.belongsTo(CardListB, { through: CardBSeriesLinking })



module.exports = {
  CardListA,
  CardListB,
  SeriesData,
  CardASeriesLinking,
  CardBSeriesLinking,
// Op: Sequelize.Op,
}
