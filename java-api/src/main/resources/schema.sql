--DROP TABLE IF EXISTS dogs;
--
--CREATE TABLE dogs (
--    dog_id INT NOT NULL,
--    name VARCHAR(250) NOT NULL,
--    age INT NOT NULL
--);
create table users
(
    id int  AUTO_INCREMENT PRIMARY KEY,
    email varchar (50) not null,
    password varchar (50) not null,
    bondHolder varchar(50) not null
);

