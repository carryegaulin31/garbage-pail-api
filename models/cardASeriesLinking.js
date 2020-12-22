CREATE TABLE cardASeriesLinking (
  cardListAId INT,
  seriesDataId INT
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  FOREIGN KEY (cardListAId) REFERENCES cardListA(id),
  FOREIGN KEY (seriesDataId) REFERENCES seriesData(id)
);