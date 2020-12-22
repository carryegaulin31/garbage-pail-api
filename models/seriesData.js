const seriesData = (connection, Sequelize) => {
  return connection.define('seriesData', {
    id: { type: Sequelize.INTEGER, auto_increment: true, primaryKey: true },
    seriesNo: { type: Sequelize.INTEGER, NOTNULL },
    releaseDate: { type: Sequelize.INTEGER, NOTNULL },
    cardNo: { type: Sequelize.INTEGER, NOTNULL},
  }, { paranoid: true })
}

module.exports = seriesData