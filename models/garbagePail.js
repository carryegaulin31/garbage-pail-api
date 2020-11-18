const kids = (connection, Sequelize) => {
  return connection.define('kids', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    name: { type: Sequelize.STRING },
    series: { type: Sequelize.INTEGER },
    releaseDate: { type: Sequelize.INTEGER },
    cardNumber: { type: Sequelize.INTEGER },
    AorB: { type: Sequelize.STRING },
  }, {
    defaultScope: {
      attributes: { exclude: ['createdAt', 'updatedAt', 'deletedAt'] }
    }
  },
  { paranoid: true })
}

module.exports = kids
