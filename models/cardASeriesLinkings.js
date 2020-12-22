const cardASeriesLinkings = (connection, Sequelize, cardListA, seriesData) => {
  return connection.define('cardASeriesLinkings', {
    cardListAId: { type: Sequelize.INTEGER, references: { model: cardListA, key: 'id ' } },
    seriesDataId: { type: Sequelize.INTEGER, references: { model: seriesData, key: 'id' } },
  }, { paranoid: true })
}

module.exports = cardASeriesLinkings