CREATE DATABASE GarbagePail;

USE kids;

CREATE TABLE kids(
  id INT auto_increment,
  name VARCHAR(255),
  list INTEGER,
  seriesNo INTEGER,
  releaseDate INTEGER,
  aOrB ENU)
    createdAt DATETIME DEFAULT NOW(),
  updateAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  primary key(id)
);

INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Nasty Nick', 'A', '1', '1985', '1');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Junkfood John', 'A', '1', '1985', '2');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Up Chuck', 'A', '1', '1985', '3', '3');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Fryin Brian', 'A', '1', '1985', '4');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Dead Ted', 'A', '1', '1985', '5');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Art Apart', 'A','1', '1985', '6');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Stormy Heather', 'A','1', '1985', '7');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Adam Bomb', 'A', '1', '1985', '8');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Boozin Bruce', 'A', '1', '1985', '9');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Tee-vee Stevie', 'A', '1', '1985', '10');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Itchy Richie', 'A', '1', '1985', '11');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Furry Fran', 'A', '1', '1985', '12');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Ashcan Andy', 'A', '1', '1985', '13');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Potty Scotty', 'A', '1', '1985', '14');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Ailin Al', 'A', '1', '1985', '15');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Weird Wendy', 'A', '1', '1985', '16');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Wacky Jackie', 'A', '1', '1985', '17');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Cranky Frankie', 'A', '1', '1985', '18');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Corroded Carl', 'A', '1', '1985', '19');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Swell Mell', 'A', '1', '1985', '20');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Virus Iris', 'A', '1', '1985', '21');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Junky Jeff', 'A', '1', '1985', '22');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Druppy Dan', 'A', '1', '1985', '23');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Nervous Rex','A', '1', '1985', '24');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Creepy Carol','A', '1', '1985', '25');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Slobby Robbie','A', '1', '1985', '26');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Brainy Janie','A', '1', '1985', '27');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Oozy Suzie','A', '1', '1985', '28');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Bony Joanie','A', '1', '1985', '29');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('New Wave Dave','A', '1', '1985', '30');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Run Down Rhoda','A', '1', '1985', '31');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Frigid Bridget','A', '1', '1985', '32');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Mad Mike', 'A','1', '1985', '33');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Kim Kong', 'A','1', '1985', '34');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Wrinkly Randy','A', '1', '1985', '35');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Wrappin Ruth','A', '1', '1985', '36');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Guillo Tina','A', '1', '1985', '37');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Slimy Sam','A', '1', '1985', '38');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Buggy Betty','A', '1', '1985', '39');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Unstitched Mitch','A', '1', '1985', '40');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Mean Gene','A','1', '1985', '41');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Evil Eddie','B', '1', '1985','1');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Ray Decay','B', '1', '1985', '2');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Heavin Steven','B', '1', '1985', '3');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Electric Bill','B', '1', '1985', '4');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Jay Decay','B','1', '1985', '5');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Busted Bob','B', '1', '1985', '6');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('April Showers','B', '1', '1985', '7');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Blasted Billy','B', '1', '1985', '8');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Drunk Ken','B', '1', '1985', '9');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Geeky Gary','B', '1', '1985', '10');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Bugged Bert','B', '1', '1985', '11');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Hairy Mary','B', '1', '1985', '12');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Spacey Stacy','B', '1', '1985', '13');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Jasin Basin','B', '1', '1985', '14');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Mauled Paul','B', '1', '1985', '15');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Haggy Maggie','B', '1', '1985', '16');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Loony Lenny','B', '1', '1985', '17');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Bad Brad','B', '1', '1985', '18');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Crater Chris','B', '1', '1985', '19');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Dressy Jesse','B', '1', '1985', '20');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Sicky Vicky','B', '1', '1985', '21');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Stinky Stan','B', '1', '1985', '22');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Leaky Lou','B', '1', '1985', '23');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Nerdy Norm','B', '1', '1985', '24');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Scary Carrie','B', '1', '1985', '25');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Fat Matt','B', '1', '1985', '26');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Jenny Genius','B', '1', '1985', '27');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Meltin Melissa','B', '1', '1985', '28');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Thin Lynn','B', '1', '1985', '29');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Graffiti Petey','B', '1', '1985', '30');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Flat Pat','B', '1', '1985', '31');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Chilly Millie','B', '1', '1985', '32');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Savage Stuart','B', '1', '1985', '33');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Anna Banana','B', '1', '1985', '34');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Rockin Robert','B', '1', '1985', '35');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Tommy Tomb','B', '1', '1985', '36');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Cindy Lopper','B', '1', '1985', '37');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Lizard Liz','B', '1', '1985', '38');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Green Jean','B', '1', '1985', '39');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Damaged Don','B', '1', '1985', '40');
INSERT INTO kids(name, list, seriesNo, releaseDate, cardNo) Values('Joltin Joe','B', '1', '1985', '41');


