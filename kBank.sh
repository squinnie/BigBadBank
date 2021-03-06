CREATE DATABASE IF NOT EXISTS bigBadBank;
USE bigBadBank;
DROP TABLE IF EXISTS account, customer;

# Create all tables as necessary --> should have an option to remove them to temp tables if the script is ran again?

CREATE TABLE customer(
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                fname VARCHAR(20) NOT NULL,
                sname VARCHAR(20) NOT NULL,
                address VARCHAR(50) NOT NULL,
                DOB DATE NOT NULL,
                gender CHAR(1),
                phone VARCHAR(11),
                email VARCHAR(50)
                );


CREATE TABLE account(
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                funds DECIMAL NOT NULL,
                initialDeposit DECIMAL NOT NULL,
                customerID INT NOT NULL,
                dateCreated datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                CONSTRAINT fk_account FOREIGN KEY (customerID) 
                REFERENCES customer(id)
                ON DELETE CASCADE
                );

ALTER TABLE customer AUTO_INCREMENT=10000000;
ALTER TABLE account AUTO_INCREMENT=20000000;

insert into customer (fname, sname, address, DOB, gender, phone, email) values ("Sarah", "Quinn", "102 Lisburn Road","1998-08-10","f","07547900697","sarahq@kainos.com");
insert into account (funds, initialDeposit, customerID) values (100, 100, 10000000);

insert into customer (fname, sname, address, DOB, gender, phone, email) values ("John", "Smith", "arse send  of nowhere","1990-06-16","m","07566485773","johns@gmail.com");
insert into account (funds, initialDeposit, customerID) values (150, 150, 10000001);







