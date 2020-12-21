DROP DATABASE GPK;
CREATE DATABASE GPK;

CREATE USER 'gpk'@'localhost' IDENTIFIED BY 'gpk';

GRANT ALL ON novels.* TO 'gpk'@'localhost';

USE GPK;

CREATE TABLE cardListA (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  list ENUM('A', 'B'),
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE cardListB (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  list ENUM('A', 'B'),
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE seriesData (
  id INT auto_increment,
  seriesNo INT NOT NULL,
  releaseDate INT NOT NULL,
  cardNo INT NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE cardListLinking (
  cardListAId INT,
  cardListBId INT,
  seriesDataId INT
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  FOREIGN KEY (cardListAId) REFERENCES cardListAId(id),
  FOREIGN KEY (cardListBId) REFERENCES cardListB(id),
  FOREIGN KEY (seriesDataId) REFERENCES seriesData(id)
);

INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListA (name, list) VALUES ("", "A");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");
INSERT INTO cardListB (name, list) VALUES ("", "B");

INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "");

INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );
INSERT INTO cardListLinking (cardListAId, cardListBId, seriesDataId) VALUES (, , );

