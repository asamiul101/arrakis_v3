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

