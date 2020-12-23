const cardBSeriesLinkings = (connection, Sequelize, cardListBs, seriesDatas) => {
  return connection.define('cardBSeriesLinkings', {
    cardListBId: { type: Sequelize.INTEGER, references: { model: cardListBs, key: 'id' } },
    seriesDataId: { type: Sequelize.INTEGER, references: { model: seriesDatas, key: 'id' } },
  }, { paranoid: true })
}

module.exports = cardBSeriesLinkings
