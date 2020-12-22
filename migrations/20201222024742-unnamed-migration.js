module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('cardListA', {
      id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
      name: { type: Sequelize.STRING },
      list: { type: Sequelize.STRING },
      createdAt: { type: Sequelize.DATE, defaultValue: Sequelize.literal('CURRENT_TIMESTAMP') },
      updatedAt: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP')
      },
      deletedAt: { type: Sequelize.DATE },
    })
    await queryInterface.createTable('cardListBs', {
      id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
      name: { type: Sequelize.STRING },
      list: { type: Sequelize.STRING },
      createdAt: { type: Sequelize.DATE, defaultValue: Sequelize.literal('CURRENT_TIMESTAMP') },
      updatedAt: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP')
      },
      deletedAt: { type: Sequelize.DATE },
    })
    await queryInterface.createTable('seriesDatas', {
      id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
      seriesNo: { type: Sequelize.INTEGER },
      releaseDate: { type: Sequelize.INTEGER },
      cardNo: { type: Sequelize.INTEGER },
      createdAt: { type: Sequelize.DATE, defaultValue: Sequelize.literal('CURRENT_TIMESTAMP') },
      updatedAt: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP')
      },
      deletedAt: { type: Sequelize.DATE },
    })

    await queryInterface.createTable('cardASeriesLinkings', {
      cardListAId: { type: Sequelize.INTEGER, references: { model: 'cardListA', key: 'id' } },
      seriesDataId: { type: Sequelize.INTEGER, references: { model: 'seriesData', key: 'id' } },
      createdAt: { type: Sequelize.DATE, defaultValue: Sequelize.literal('CURRENT_TIMESTAMP') },
      updatedAt: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP')
      },
      deletedAt: { type: Sequelize.DATE },
    })

    return queryInterface.createTable('cardBSeriesLinkings', {
      cardListBId: { type: Sequelize.INTEGER, references: { model: 'cardListB', key: 'id' } },
      seriesDataId: { type: Sequelize.INTEGER, references: { model: 'seriesData', key: 'id' } },
      createdAt: { type: Sequelize.DATE, defaultValue: Sequelize.literal('CURRENT_TIMESTAMP') },
      updatedAt: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP')
      },
      deletedAt: { type: Sequelize.DATE },
    })
  },

  down: async (queryInterface) => {
    await queryInterface.dropTable('cardBSeriesLinkings')
    await queryInterface.dropTable('cardASeriesLinkings')
    await queryInterface.dropTable('seriesDatas')
    await queryInterface.dropTable('cardListBs')

    return queryInterface.dropTable('cardListA')
  }
}