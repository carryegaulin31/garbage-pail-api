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

INSERT INTO cardListA (name, list) VALUES ("Nasty Nick", "A");
INSERT INTO cardListA (name, list) VALUES ("Junkfood John", "A");
INSERT INTO cardListA (name, list) VALUES ("Up Chuck", "A");
INSERT INTO cardListA (name, list) VALUES ("Fryin Brian", "A");
INSERT INTO cardListA (name, list) VALUES ("Dead Ted", "A");
INSERT INTO cardListA (name, list) VALUES ("Art Apart", "A");
INSERT INTO cardListA (name, list) VALUES ("Stormy Heather", "A");
INSERT INTO cardListA (name, list) VALUES ("Adam Bomb", "A");
INSERT INTO cardListA (name, list) VALUES ("Boozin Bruce", "A");
INSERT INTO cardListA (name, list) VALUES ("Tee-vee", "A");
INSERT INTO cardListA (name, list) VALUES ("Itchy Richie", "A");
INSERT INTO cardListA (name, list) VALUES ("Furry Fran", "A");
INSERT INTO cardListA (name, list) VALUES ("Ashcan Andy", "A");
INSERT INTO cardListA (name, list) VALUES ("Potty Scotty", "A");
INSERT INTO cardListA (name, list) VALUES ("Ailin Al", "A");
INSERT INTO cardListA (name, list) VALUES ("Weird Wendy", "A");
INSERT INTO cardListA (name, list) VALUES ("Wacky Jackie", "A");
INSERT INTO cardListA (name, list) VALUES ("Cranky Frankie", "A");
INSERT INTO cardListA (name, list) VALUES ("Corroded Carl", "A");
INSERT INTO cardListA (name, list) VALUES ("Swell Mell", "A");
INSERT INTO cardListA (name, list) VALUES ("Virus Iris", "A");
INSERT INTO cardListA (name, list) VALUES ("Junky Jeff", "A");
INSERT INTO cardListA (name, list) VALUES ("Druppy Dan", "A");
INSERT INTO cardListA (name, list) VALUES ("Nervous Rex", "A");
INSERT INTO cardListA (name, list) VALUES ("Creepy Carol", "A");
INSERT INTO cardListA (name, list) VALUES ("Slobby Robbie", "A");
INSERT INTO cardListA (name, list) VALUES ("Brainy Janie", "A");
INSERT INTO cardListA (name, list) VALUES ("Oozy Suzie", "A");
INSERT INTO cardListA (name, list) VALUES ("Bony Joanie", "A");
INSERT INTO cardListA (name, list) VALUES ("New Wave Dave", "A");
INSERT INTO cardListA (name, list) VALUES ("Run Down Rhoda", "A");
INSERT INTO cardListA (name, list) VALUES ("Frigid Bridget", "A");
INSERT INTO cardListA (name, list) VALUES ("Mad Mike", "A");
INSERT INTO cardListA (name, list) VALUES ("Kim Kong", "A");
INSERT INTO cardListA (name, list) VALUES ("Wrinkly Randy", "A");
INSERT INTO cardListA (name, list) VALUES ("Wrappin Ruth", "A");
INSERT INTO cardListA (name, list) VALUES ("Guillo Tina", "A");
INSERT INTO cardListA (name, list) VALUES ("Slimy Sam", "A");
INSERT INTO cardListA (name, list) VALUES ("Buggy Betty", "A");
INSERT INTO cardListA (name, list) VALUES ("Unstitched Mitch", "A");
INSERT INTO cardListA (name, list) VALUES ("Mean Gene", "A");
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

