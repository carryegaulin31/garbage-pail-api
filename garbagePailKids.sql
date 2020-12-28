DROP DATABASE GPK;
CREATE DATABASE GPK;

USE GPK;

CREATE TABLE cardListAs (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  list VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE cardListBs (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  list VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE seriesDatas (
  id INT auto_increment,
  seriesNo INT NOT NULL,
  releaseDate INT NOT NULL,
  cardNo INT NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE cardASeriesLinkings (
  cardListAsId INT,
  seriesDataId INT,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  FOREIGN KEY (cardListAsId) REFERENCES cardListAs(id),
  FOREIGN KEY (seriesDataId) REFERENCES seriesDatas(id)
);

CREATE TABLE cardBSeriesLinkings (
  cardListBsId INT,
  seriesDataId INT,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  FOREIGN KEY (cardListBsId) REFERENCES cardListBs(id),
  FOREIGN KEY (seriesDataId) REFERENCES seriesDatas(id)
);

CREATE TABLE userTables (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  list VARCHAR(255) NOT NULL,
  seriesNo INT,
  releaseDate INT,
  cardNo INT,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

INSERT INTO cardListAs (name, list) VALUES ("Nasty Nick", 'A');
INSERT INTO cardListAs (name, list) VALUES ("Junkfood John", "A");
INSERT INTO cardListAs (name, list) VALUES ("Up Chuck", "A");
INSERT INTO cardListAs (name, list) VALUES ("Fryin Brian", "A");
INSERT INTO cardListAs (name, list) VALUES ("Dead Ted", "A");
INSERT INTO cardListAs (name, list) VALUES ("Art Apart", "A");
INSERT INTO cardListAs (name, list) VALUES ("Stormy Heather", "A");
INSERT INTO cardListAs (name, list) VALUES ("Adam Bomb", "A");
INSERT INTO cardListAs (name, list) VALUES ("Boozin Bruce", "A");
INSERT INTO cardListAs (name, list) VALUES ("Tee-vee", "A");
INSERT INTO cardListAs (name, list) VALUES ("Itchy Richie", "A");
INSERT INTO cardListAs (name, list) VALUES ("Furry Fran", "A");
INSERT INTO cardListAs (name, list) VALUES ("Ashcan Andy", "A");
INSERT INTO cardListAs (name, list) VALUES ("Potty Scotty", "A");
INSERT INTO cardListAs (name, list) VALUES ("Ailin Al", "A");
INSERT INTO cardListAs (name, list) VALUES ("Weird Wendy", "A");
INSERT INTO cardListAs (name, list) VALUES ("Wacky Jackie", "A");
INSERT INTO cardListAs (name, list) VALUES ("Cranky Frankie", "A");
INSERT INTO cardListAs (name, list) VALUES ("Corroded Carl", "A");
INSERT INTO cardListAs (name, list) VALUES ("Swell Mell", "A");
INSERT INTO cardListAs (name, list) VALUES ("Virus Iris", "A");
INSERT INTO cardListAs (name, list) VALUES ("Junky Jeff", "A");
INSERT INTO cardListAs (name, list) VALUES ("Druppy Dan", "A");
INSERT INTO cardListAs (name, list) VALUES ("Nervous Rex", "A");
INSERT INTO cardListAs (name, list) VALUES ("Creepy Carol", "A");
INSERT INTO cardListAs (name, list) VALUES ("Slobby Robbie", "A");
INSERT INTO cardListAs (name, list) VALUES ("Brainy Janie", "A");
INSERT INTO cardListAs (name, list) VALUES ("Oozy Suzie", "A");
INSERT INTO cardListAs (name, list) VALUES ("Bony Joanie", "A");
INSERT INTO cardListAs (name, list) VALUES ("New Wave Dave", "A");
INSERT INTO cardListAs (name, list) VALUES ("Run Down Rhoda", "A");
INSERT INTO cardListAs (name, list) VALUES ("Frigid Bridget", "A");
INSERT INTO cardListAs (name, list) VALUES ("Mad Mike", "A");
INSERT INTO cardListAs (name, list) VALUES ("Kim Kong", "A");
INSERT INTO cardListAs (name, list) VALUES ("Wrinkly Randy", "A");
INSERT INTO cardListAs (name, list) VALUES ("Wrappin Ruth", "A");
INSERT INTO cardListAs (name, list) VALUES ("Guillo Tina", "A");
INSERT INTO cardListAs (name, list) VALUES ("Slimy Sam", "A");
INSERT INTO cardListAs (name, list) VALUES ("Buggy Betty", "A");
INSERT INTO cardListAs (name, list) VALUES ("Unstitched Mitch", "A");
INSERT INTO cardListAs (name, list) VALUES ("Mean Gene", "A");

INSERT INTO cardListBs (name, list) VALUES ("Evil Eddie", "B");
INSERT INTO cardListBs (name, list) VALUES ("Ray Decay", "B");
INSERT INTO cardListBs (name, list) VALUES ("Heavin Steven", "B");
INSERT INTO cardListBs (name, list) VALUES ("Electric Bill", "B");
INSERT INTO cardListBs (name, list) VALUES ("Jay Decay", "B");
INSERT INTO cardListBs (name, list) VALUES ("Busted Bob", "B");
INSERT INTO cardListBs (name, list) VALUES ("April Showers", "B");
INSERT INTO cardListBs (name, list) VALUES ("Blasted Billy", "B");
INSERT INTO cardListBs (name, list) VALUES ("Drunk Ken", "B");
INSERT INTO cardListBs (name, list) VALUES ("Geeky Gary", "B");
INSERT INTO cardListBs (name, list) VALUES ("Bugged Bert", "B");
INSERT INTO cardListBs (name, list) VALUES ("Hairy Mary", "B");
INSERT INTO cardListBs (name, list) VALUES ("Spacey Stacy", "B");
INSERT INTO cardListBs (name, list) VALUES ("Jasin Basin", "B");
INSERT INTO cardListBs (name, list) VALUES ("Mauled Paul", "B");
INSERT INTO cardListBs (name, list) VALUES ("Haggy Maggie", "B");
INSERT INTO cardListBs (name, list) VALUES ("Loony Lenny", "B");
INSERT INTO cardListBs (name, list) VALUES ("Bad Brad", "B");
INSERT INTO cardListBs (name, list) VALUES ("Crater Chris", "B");
INSERT INTO cardListBs (name, list) VALUES ("Dressy Jesse", "B");
INSERT INTO cardListBs (name, list) VALUES ("Sicky Vicky", "B");
INSERT INTO cardListBs (name, list) VALUES ("Stinky Stan", "B");
INSERT INTO cardListBs (name, list) VALUES ("Leaky Lou", "B");
INSERT INTO cardListBs (name, list) VALUES ("Nerdy Norm", "B");
INSERT INTO cardListBs (name, list) VALUES ("Scary Carrie", "B");
INSERT INTO cardListBs (name, list) VALUES ("Fat Matt", "B");
INSERT INTO cardListBs (name, list) VALUES ("Jenny Genius", "B");
INSERT INTO cardListBs (name, list) VALUES ("Meltin Melissa", "B");
INSERT INTO cardListBs (name, list) VALUES ("Thin Lynn", "B");
INSERT INTO cardListBs (name, list) VALUES ("Graffiti Petey", "B");
INSERT INTO cardListBs (name, list) VALUES ("Flat Pat", "B");
INSERT INTO cardListBs (name, list) VALUES ("Chilly Millie", "B");
INSERT INTO cardListBs (name, list) VALUES ("Savage Stuart", "B");
INSERT INTO cardListBs (name, list) VALUES ("Anna Banana", "B");
INSERT INTO cardListBs (name, list) VALUES ("Rockin Robert", "B");
INSERT INTO cardListBs (name, list) VALUES ("Tommy Tomb", "B");
INSERT INTO cardListBs (name, list) VALUES ("Cindy Lopper", "B");
INSERT INTO cardListBs (name, list) VALUES ("Lizard Liz", "B");
INSERT INTO cardListBs (name, list) VALUES ("Green Jean", "B");
INSERT INTO cardListBs (name, list) VALUES ("Damaged Don", "B");
INSERT INTO cardListBs (name, list) VALUES ("Joltin Joe", "B");

INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "1");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "2");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "3");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "4");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "5");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "6");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "7");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "8");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "9");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "10");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "11");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "12");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "13");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "14");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "15");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "16");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "17");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "18");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "19");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "20");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "21");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "22");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "23");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "24");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "25");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "26");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "27");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "28");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "29");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "30");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "31");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "32");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "33");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "34");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "35");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "36");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "37");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "38");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "39");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "40");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "41");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "1");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "2");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "3");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "4");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "5");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "6");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "7");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "8");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "9");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "10");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "11");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "12");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "13");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "14");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "15");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "16");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "17");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "18");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "19");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "20");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "21");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "22");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "23");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "24");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "25");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "26");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "27");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "28");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "29");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "30");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "31");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "32");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "33");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "34");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "35");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "36");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "37");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "38");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "39");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "40");
INSERT INTO seriesDatas (seriesNo, releaseDate, cardNo) VALUES ("1", "1985", "41");



INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (1, 1);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (2, 2 );
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (3, 3 );
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (4, 4);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (5, 5 );
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (6, 6);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (7, 7);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (8, 8);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (9, 9);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (10, 10);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (11, 11);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (12, 12);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (13, 13);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (14, 14);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (15, 15);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (16, 16);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (17, 17);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (18, 18);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (19, 19);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (20, 20);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (21, 21);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (22, 22);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (23, 23);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (24, 24);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (25, 25);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (26, 26);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (27, 27);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (28, 28);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (29, 29);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (30, 30);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (31, 31);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (32, 32);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (33, 33);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (34, 34);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (35, 35);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (36, 36);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (37, 37);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (38, 38);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (39, 39);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (40, 40);
INSERT INTO cardASeriesLinkings (cardListAsId, seriesDataId) VALUES (41, 41);

INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (1, 42);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (2, 43 );
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (3, 44);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (4, 45);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (5, 46);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (6, 47);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (7, 48);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (8, 49);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (9, 50);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (10, 51);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (11, 52);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (12, 53);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (13, 54);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (14, 55);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (15, 56);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (16, 57);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (17, 58);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (18, 59);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (19, 60);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (20, 61);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (21, 62);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (22, 63);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (23, 64);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (24, 65);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (25, 66);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (26, 67);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (27, 68);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (28, 69);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (29, 70);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (30, 71);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (31, 72);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (32, 73);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (33, 74);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (34, 75);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (35, 76);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (36, 77);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (37, 78);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (38, 79);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (39, 80);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (40, 81);
INSERT INTO cardBSeriesLinkings (cardListBsId, seriesDataId) VALUES (41, 82);