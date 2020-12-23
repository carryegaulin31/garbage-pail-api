const userTables = (connection, Sequelize) => {
  return connection.define('userTables', {
    id: { type: Sequelize.INTEGER, auto_increment: true, primaryKey: true },
    name: { type: Sequelize.STRING },
    list: { type: Sequelize.STRING },
    seriesNo: { type: Sequelize.INTEGER },
    releaseDate: { type: Sequelize.INTEGER },
    cardNo: { type: Sequelize.INTEGER },
  }, { paranoid: true })
}

module.exports = userTables