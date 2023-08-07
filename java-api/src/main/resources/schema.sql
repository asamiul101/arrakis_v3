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
    user_id int  AUTO_INCREMENT PRIMARY KEY,
    password varchar (50) not null,
    bond_holder varchar(50) not null
);
DROP TABLE IF EXISTS book;
CREATE TABLE book (
  book_id int NOT NULL AUTO_INCREMENT,
  book_name varchar(255) NOT NULL,
  PRIMARY KEY (book_id)
);

DROP TABLE IF EXISTS book_user;
CREATE TABLE book_user (
  id int  AUTO_INCREMENT PRIMARY KEY,
  book_id int NOT NULL,
  user_id int NOT NULL,
  FOREIGN KEY (book_id) REFERENCES book(book_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
DROP TABLE IF EXISTS security;
CREATE TABLE security (
  security_id int NOT NULL AUTO_INCREMENT,
  isin varchar(50) DEFAULT NULL,
  cusip varchar(50) DEFAULT NULL,
  issuer_name varchar(255) NOT NULL,
  maturity_date varchar(255) NOT NULL,
  coupon float NOT NULL,
  type varchar(255) NOT NULL,
  face_value float NOT NULL,
  currency varchar(10) NOT NULL,
  status varchar(32) DEFAULT NULL,
  PRIMARY KEY (security_id)
);
DROP TABLE IF EXISTS counterparty;
CREATE TABLE counterparty (
  counterparty_id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (counterparty_id)
);

DROP TABLE IF EXISTS trades;
CREATE TABLE trades (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  book_id int NOT NULL,
  security_id int NOT NULL,
  counterparty_id int NOT NULL,
  currency varchar(10) NOT NULL,
  status varchar(32) NOT NULL,
  quantity int NOT NULL,
  type varchar(255) NOT NULL,
  trade_date varchar(255) NOT NULL,
  settlement_date varchar(255) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (security_id) REFERENCES security(security_id),
  FOREIGN KEY (counterparty_id) REFERENCES counterparty(counterparty_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id)
  );

