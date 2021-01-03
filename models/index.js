const Sequelize = require('sequelize')
const allConfigs = require('../config/sequelize')
const CardListAsModel = require('./cardListAs')
const CardListBsModel = require('./cardListBs')
const SeriesDatasModel = require('./seriesData')
const CardASeriesLinkingModel = require('./cardASeriesLinkings')
const CardBSeriesLinkingModel = require('./cardBSeriesLinkings')

const environment = process.env.NODE_ENV || 'development'
const config = allConfigs[environment]

const connection = new Sequelize(config.database, config.username, config.password, {
  host: config.host, dialect: config.dialect
})

const CardListAs = CardListAsModel(connection, Sequelize)
const CardListBs = CardListBsModel(connection, Sequelize)
const SeriesDatas = SeriesDatasModel(connection, Sequelize)
const CardASeriesLinkings = CardASeriesLinkingModel(connection, Sequelize, CardListAs, SeriesDatas)
const CardBSeriesLinkings = CardBSeriesLinkingModel(connection, Sequelize, CardListBs, SeriesDatas)

CardListAs.belongsToMany(SeriesDatas, { through: CardASeriesLinkings })
CardListBs.belongsToMany(SeriesDatas, { through: CardBSeriesLinkings })
CardASeriesLinkings.belongsTo(CardListAs)
CardBSeriesLinkings.belongsTo(CardListBs)





module.exports = {
  CardListAs,
  CardListBs,
  SeriesDatas,
  CardASeriesLinkings,
  CardBSeriesLinkings
}
