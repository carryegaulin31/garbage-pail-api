const cardListAs = (connection, Sequelize) => {
  return connection.define('cardListAs', {
    id: { type: Sequelize.INTEGER, auto_increment: true, primaryKey: true },
    name: { type: Sequelize.STRING },
    list: { type: Sequelize.STRING },
  }, { paranoid: true })
}

module.exports = cardListAs
