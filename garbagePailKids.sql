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

CREATE TABLE cardASeriesLinking (
  cardListAId INT,
  seriesDataId INT
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  FOREIGN KEY (cardListAId) REFERENCES cardListA(id),
  FOREIGN KEY (seriesDataId) REFERENCES seriesData(id)
);

CREATE TABLE cardBSeriesLinking (
  cardListBId INT,
  seriesDataId INT
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
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



INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (1, 1);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (2, 2 );
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (3, 3 );
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (4, 4);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (5, 5 );
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (6, 6);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (7, 7);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (8, 8);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (9, 9);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (10, 10);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (11, 11);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (12, 12);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (13, 13);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (14, 14);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (15, 15);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (16, 16);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (17, 17);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (18, 18);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (19, 19);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (20, 20);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (21, 21);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (22, 22);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (23, 23);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (24, 24);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (25, 25);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (26, 26);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (27, 27);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (28, 28);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (29, 29);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (30, 30);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (31, 31);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (32, 32);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (33, 33);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (34, 34);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (35, 35);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (36, 36);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (37, 37);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (38, 38);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (39, 39);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (40, 40);
INSERT INTO cardASeriesLinking (cardListAId, seriesDataId) VALUES (41, 41);

INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (1, 42);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (2, 43 );
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (3, 44);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (4, 45);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (5, 46);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (6, 47);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (7, 48);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (8, 49);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (9, 50);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (10, 51);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (11, 52);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (12, 53);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (13, 54);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (14, 55);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (15, 56);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (16, 57);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (17, 58);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (18, 59);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (19, 60);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (20, 61);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (21, 62);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (22, 63);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (23, 64);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (24, 65);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (25, 66);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (26, 67);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (27, 68);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (28, 69);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (29, 70);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (30, 71);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (31, 72);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (32, 73);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (33, 74);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (34, 75);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (35, 76);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (36, 77);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (37, 78);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (38, 79);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (39, 80);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (40, 81);
INSERT INTO cardBSeriesLinking (cardListBid, seriesDataId) VALUES (41, 82);