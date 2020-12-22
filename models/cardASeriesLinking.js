const cardASeriesLinking = (connection, Sequelize, cardListA, seriesData) => {
  return connection.define('cardASeriesLinking', {
    cardListAId: { type: Sequelize.INTEGER, references: { model: cardListA, key: 'id ' } },
    seriesDataId: { type: Sequelize.INTEGER, references: { model: seriesData, key: 'id' } },
  }, { paranoid: true })
}

module.exports = cardASeriesLinking