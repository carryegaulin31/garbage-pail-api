CREATE DATABASE GarbagePail;

USE kids;

CREATE TABLE kids(
  id INT auto_increment,
  name VARCHAR(255),
  series INTEGER,
  releaseDate INTEGER,
  cardNumber INTEGER,
  aOrB ENUM('A', 'B')
    createdAt DATETIME DEFAULT NOW(),
  updateAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  primary key(id)
);

INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Nasty Nick', '1', '1985', '1', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Junkfood John', '1', '1985', '2', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Up Chuck', '1', '1985', '3', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Fryin Brian', '1', '1985', '4', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Dead Ted', '1', '1985', '5', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Art Apart', '1', '1985', '6', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Stormy Heather', '1', '1985', '7', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Adam Bomb', '1', '1985', '8', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Boozin Bruce', '1', '1985', '9', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Tee-vee Stevie', '1', '1985', '10', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Itchy Richie', '1', '1985', '11', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Furry Fran', '1', '1985', '12', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Ashcan Andy', '1', '1985', '13', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Potty Scotty', '1', '1985', '14', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Ailin Al', '1', '1985', '15', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Weird Wendy', '1', '1985', '16', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Wacky Jackie', '1', '1985', '17', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Cranky Frankie', '1', '1985', '18', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Corroded Carl', '1', '1985', '19', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Swell Mell', '1', '1985', '20', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Virus Iris', '1', '1985', '21', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Junky Jeff', '1', '1985', '22', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Druppy Dan', '1', '1985', '23', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Nervous Rex', '1', '1985', '24', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Creepy Carol', '1', '1985', '25', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Slobby Robbie', '1', '1985', '26', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Brainy Janie', '1', '1985', '27', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Oozy Suzie', '1', '1985', '28', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Bony Joanie', '1', '1985', '29', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('New Wave Dave', '1', '1985', '30', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Run Down Rhoda', '1', '1985', '31', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Frigid Bridget', '1', '1985', '32', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Mad Mike', '1', '1985', '33', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Kim Kong', '1', '1985', '34', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Wrinkly Randy', '1', '1985', '35', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Wrappin Ruth', '1', '1985', '36', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Guillo Tina', '1', '1985', '37', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Slimy Sam', '1', '1985', '38', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Buggy Betty', '1', '1985', '39', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Unstitched Mitch', '1', '1985', '40', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Mean Gene', '1', '1985', '41', 'A');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Evil Eddie', '1', '1985', '1', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Ray Decay', '1', '1985', '2', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Heavin Steven', '1', '1985', '3', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Electric Bill', '1', '1985', '4', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Jay Decay', '1', '1985', '5', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Busted Bob', '1', '1985', '6', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('April Showers', '1', '1985', '7', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Blasted Billy', '1', '1985', '8', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Drunk Ken', '1', '1985', '9', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Geeky Gary', '1', '1985', '10', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Bugged Bert', '1', '1985', '11', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Hairy Mary', '1', '1985', '12', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Spacey Stacy', '1', '1985', '13', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Jasin Basin', '1', '1985', '14', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Mauled Paul', '1', '1985', '15', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Haggy Maggie', '1', '1985', '16', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Loony Lenny', '1', '1985', '17', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Bad Brad', '1', '1985', '18', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Crater Chris', '1', '1985', '19', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Dressy Jesse', '1', '1985', '20', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Sicky Vicky', '1', '1985', '21', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Stinky Stan', '1', '1985', '22', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Leaky Lou', '1', '1985', '23', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Nerdy Norm', '1', '1985', '24', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Scary Carrie', '1', '1985', '25', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Fat Matt', '1', '1985', '26', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Jenny Genius', '1', '1985', '27', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Meltin Melissa', '1', '1985', '28', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Thin Lynn', '1', '1985', '29', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Graffiti Petey', '1', '1985', '30', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Flat Pat', '1', '1985', '31', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Chilly Millie', '1', '1985', '32', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Savage Stuart', '1', '1985', '33', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Anna Banana', '1', '1985', '34', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Rockin' Robert', '1', '1985', '35', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Tommy Tomb', '1', '1985', '36', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Cindy Lopper', '1', '1985', '37', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Lizard Liz', '1', '1985', '38', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Green Jean', '1', '1985', '39', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Damaged Don', '1', '1985', '40', 'B');
INSERT INTO kids(name, series, releaseDate, cardNumber, AorB) Values('Joltin' Joe', '1', '1985', '41', 'B');


