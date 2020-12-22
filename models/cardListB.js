CREATE TABLE cardListB (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  list ENUM('A', 'B'),
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);