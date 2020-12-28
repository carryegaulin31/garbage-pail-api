const cardASeriesLinkings = (connection, Sequelize, cardListAs, seriesDatas) => {
  return connection.define('cardASeriesLinkings', {
    cardListAId: { type: Sequelize.INTEGER, references: { model: cardListAs, key: 'id ' } },
    seriesDatasId: { type: Sequelize.INTEGER, references: { model: seriesDatas, key: 'id' } },
  }, { paranoid: true })
}

module.exports = cardASeriesLinkings
