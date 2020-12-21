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
INSERT INTO cardListB (name, list) VALUES ("Evil Eddie", "B");
INSERT INTO cardListB (name, list) VALUES ("Ray Decay", "B");
INSERT INTO cardListB (name, list) VALUES ("Heavin Steven", "B");
INSERT INTO cardListB (name, list) VALUES ("Electric Bill", "B");
INSERT INTO cardListB (name, list) VALUES ("Jay Decay", "B");
INSERT INTO cardListB (name, list) VALUES ("Busted Bob", "B");
INSERT INTO cardListB (name, list) VALUES ("April Showers", "B");
INSERT INTO cardListB (name, list) VALUES ("Blasted Billy", "B");
INSERT INTO cardListB (name, list) VALUES ("Drunk Ken", "B");
INSERT INTO cardListB (name, list) VALUES ("Geeky Gary", "B");
INSERT INTO cardListB (name, list) VALUES ("Bugged Bert", "B");
INSERT INTO cardListB (name, list) VALUES ("Hairy Mary", "B");
INSERT INTO cardListB (name, list) VALUES ("Spacey Stacy", "B");
INSERT INTO cardListB (name, list) VALUES ("Jasin Basin", "B");
INSERT INTO cardListB (name, list) VALUES ("Mauled Paul", "B");
INSERT INTO cardListB (name, list) VALUES ("Haggy Maggie", "B");
INSERT INTO cardListB (name, list) VALUES ("Loony Lenny", "B");
INSERT INTO cardListB (name, list) VALUES ("Bad Brad", "B");
INSERT INTO cardListB (name, list) VALUES ("Crater Chris", "B");
INSERT INTO cardListB (name, list) VALUES ("Dressy Jesse", "B");
INSERT INTO cardListB (name, list) VALUES ("Sicky Vicky", "B");
INSERT INTO cardListB (name, list) VALUES ("Stinky Stan", "B");
INSERT INTO cardListB (name, list) VALUES ("Leaky Lou", "B");
INSERT INTO cardListB (name, list) VALUES ("Nerdy Norm", "B");
INSERT INTO cardListB (name, list) VALUES ("Scary Carrie", "B");
INSERT INTO cardListB (name, list) VALUES ("Fat Matt", "B");
INSERT INTO cardListB (name, list) VALUES ("Jenny Genius", "B");
INSERT INTO cardListB (name, list) VALUES ("Meltin Melissa", "B");
INSERT INTO cardListB (name, list) VALUES ("Thin Lynn", "B");
INSERT INTO cardListB (name, list) VALUES ("Graffiti Petey", "B");
INSERT INTO cardListB (name, list) VALUES ("Flat Pat", "B");
INSERT INTO cardListB (name, list) VALUES ("Chilly Millie", "B");
INSERT INTO cardListB (name, list) VALUES ("Savage Stuart", "B");
INSERT INTO cardListB (name, list) VALUES ("Anna Banana", "B");
INSERT INTO cardListB (name, list) VALUES ("Rockin Robert", "B");
INSERT INTO cardListB (name, list) VALUES ("Tommy Tomb", "B");
INSERT INTO cardListB (name, list) VALUES ("Cindy Lopper", "B");
INSERT INTO cardListB (name, list) VALUES ("Lizard Liz", "B");
INSERT INTO cardListB (name, list) VALUES ("Green Jean", "B");
INSERT INTO cardListB (name, list) VALUES ("Damaged Don", "B");
INSERT INTO cardListB (name, list) VALUES ("Joltin Joe", "B");

INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "1");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "2");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "3");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "4");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "5");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "6");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "7");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "8");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "9");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "10");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "11");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "12");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "13");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "14");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "15");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "16");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "17");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "18");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "19");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "20");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "21");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "22");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "23");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "24");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "25");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "26");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "27");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "28");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "29");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "30");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "31");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "32");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "33");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "34");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "35");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "36");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "37");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "38");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "39");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "40");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "41");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "1");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "2");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "3");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "4");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "5");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "6");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "7");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "8");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "9");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "10");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "11");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "12");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "13");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "14");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "15");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "16");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "17");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "18");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "19");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "20");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "21");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "22");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "23");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "24");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "25");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "26");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "27");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "28");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "29");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "30");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "31");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "32");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "33");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "34");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "35");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "36");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "37");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "38");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "39");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "40");
INSERT INTO seriesData (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "41");

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

