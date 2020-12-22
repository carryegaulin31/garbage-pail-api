const cardListB = (connection, Sequelize) => {
  return connection.define('cardListB', {
    id: { type: Sequelize.INTEGER, auto_increment: true, primaryKey: true },
    name: { type: Sequelize.STRING },
    list: { type: Sequelize.STRING },
  }, { paranoid: true })
}

module.exports = cardListB
