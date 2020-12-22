const cardBSeriesLinking = (connection, Sequelize, cardListB, seriesData) => {
  return connection.define('cardBSeriesLinking', {
    cardListBId: { type: Sequelize.INTEGER, references: { model: cardListB, key: 'id ' } },
    seriesDataId: { type: Sequelize.INTEGER, references: { model: seriesData, key: 'id' } },
  }, { paranoid: true })
}

module.exports = cardBSeriesLinking
