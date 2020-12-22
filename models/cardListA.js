const cardListA = (connection, Sequelize) => {
  return connection.define('cardListA', {
    id: { type: Sequelize.INTEGER, auto_increment: true, primaryKey: true },
    name: { type: Sequelize.STRING, NOTNULL },
    list: { type: Sequelize.STRING },
  }, { paranoid: true })
}

module.exports = cardListA