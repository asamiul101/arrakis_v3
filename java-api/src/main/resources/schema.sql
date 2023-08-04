--DROP TABLE IF EXISTS dogs;
--
--CREATE TABLE dogs (
--    dog_id INT NOT NULL,
--    name VARCHAR(250) NOT NULL,
--    age INT NOT NULL
--);
DROP TABLE IF EXISTS users;
create table users
(
    id int  AUTO_INCREMENT PRIMARY KEY,
    password varchar (50) not null,
    bond_holder varchar(50) not null
);
DROP TABLE IF EXISTS book;
CREATE TABLE book (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS book_user;
CREATE TABLE book_user (
  book_id int NOT NULL,
  user_id int NOT NULL,
  FOREIGN KEY (book_id) REFERENCES book(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
DROP TABLE IF EXISTS security;
CREATE TABLE security (
  id int NOT NULL AUTO_INCREMENT,
  isin varchar(50) DEFAULT NULL,
  cusip varchar(50) DEFAULT NULL,
  issuer_name varchar(255) NOT NULL,
  maturity_date datetime NOT NULL,
  coupon float NOT NULL,
  type varchar(255) NOT NULL,
  face_value float NOT NULL,
  currency varchar(10) NOT NULL,
  status varchar(32) DEFAULT NULL,
  PRIMARY KEY (id)
);
DROP TABLE IF EXISTS counterparty;
CREATE TABLE counterparty (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
);
DROP TABLE IF EXISTS trades;
CREATE TABLE trades (
  id int NOT NULL AUTO_INCREMENT,
  book_id int NOT NULL,
  security_id int NOT NULL,
  counterparty_id int NOT NULL,
  currency varchar(10) NOT NULL,
  status varchar(32) NOT NULL,
  quantity int NOT NULL,
  unit_price float NOT NULL,
  buy_sell varchar(32) NOT NULL,
  trade_date datetime NOT NULL,
  settlement_date datetime NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (security_id) REFERENCES security(id),
  FOREIGN KEY (counterparty_id) REFERENCES counterparty(id),
  FOREIGN KEY (book_id) REFERENCES book(id)
  );