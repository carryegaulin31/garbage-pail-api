const seriesData = (connection, Sequelize) => {
  return connection.define('seriesData', {
    id: { type: Sequelize.INTEGER, auto_increment: true, primaryKey: true },
    seriesNo: { type: Sequelize.INTEGER },
    releaseDate: { type: Sequelize.INTEGER },
    cardNo: { type: Sequelize.INTEGER },
  }, { paranoid: true })
}

module.exports = seriesData
