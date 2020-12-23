const Sequelize = require('sequelize')
const allConfigs = require('../config/sequelize')
const CardListAModel = require('./cardListA')
const CardListBModel = require('./cardListBs')
const SeriesDataModel = require('./seriesDatas')
const CardASeriesLinkingModel = require('./cardASeriesLinkings')
const CardBSeriesLinkingModel = require('./cardBSeriesLinkings')



const environment = process.env.NODE_ENV || 'development'
const config = allConfigs[environment]

const connection = new Sequelize(config.database, config.username, config.password, {
  host: config.host, dialect: config.dialect
})

const CardListA = CardListAModel(connection, Sequelize)
const CardListBs = CardListBModel(connection, Sequelize)
const SeriesDatas = SeriesDataModel(connection, Sequelize)
const CardASeriesLinkings = CardASeriesLinkingModel(connection, Sequelize, CardListA, SeriesDatas)
const CardBSeriesLinkings = CardBSeriesLinkingModel(connection, Sequelize, CardListBs, SeriesDatas)

CardListA.belongsToMany(SeriesDatas, { through: CardASeriesLinkings })
CardListBs.belongsToMany(SeriesDatas, { through: CardBSeriesLinkings })
CardASeriesLinkings.belongsTo(CardListA)
CardBSeriesLinkings.belongsTo(CardListBs)





module.exports = {
  CardListA,
  CardListBs,
  SeriesDatas,
  CardASeriesLinkings,
  CardBSeriesLinkings,
  // Op: Sequelize.Op,
}
