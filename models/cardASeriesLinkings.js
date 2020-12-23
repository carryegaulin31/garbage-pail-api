const cardASeriesLinkings = (connection, Sequelize, cardListA, seriesDatas) => {
  return connection.define('cardASeriesLinkings', {
    cardListAId: { type: Sequelize.INTEGER, references: { model: cardListA, key: 'id ' } },
    seriesDatasId: { type: Sequelize.INTEGER, references: { model: seriesDatas, key: 'id' } },
  }, { paranoid: true })
}

module.exports = cardASeriesLinkings
