const cardBSeriesLinkings = (connection, Sequelize, cardListB, seriesData) => {
  return connection.define('cardBSeriesLinkings', {
    cardListBId: { type: Sequelize.INTEGER, references: { model: cardListB, key: 'id ' } },
    seriesDataId: { type: Sequelize.INTEGER, references: { model: seriesData, key: 'id' } },
  }, { paranoid: true })
}

module.exports = cardBSeriesLinkings
