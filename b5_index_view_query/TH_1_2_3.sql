CREATE DATABASE IF NOT EXISTS classicmodel1;
-- drop database classicmodel1;
USE classicmodel1;
CREATE TABLE Customer(
id INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(45),
contactLastName VARCHAR(45),
contactFirtName VARCHAR(45),
phone VARCHAR(50),
addressLine1 VARCHAR(100)
);

INSERT INTO Customer(customerName,contactLastName,contactFirtName,phone,addressLine1)
VALUE
('Atelier graphique','Schmitt','Carine ','a40322555','54, rue Royale'),
('aaaa','Schmitt','Carine ','40.32.2555','54, rue Royale'),
('bbbbbr graphique','Schmitt','Carine ','40.32.2555','54, rue Royale'),
('asdasd graphique','Schmitt','Carine ','40.32.2555','54, rue Royale'),
('asdasdgraphique','Schmitt','Carine ','40.32.2555','54, rue Royale'),
('cccc','Schmitt','Carine ','40.32.2555','54, rue Royale');


ALTER TABLE Customer ADD INDEX idx_id(id);
SELECT *
 FROM Customer
WHERE id =4;

DELIMITER //
CREATE PROCEDURE findAllCustomer()

BEGIN
  SELECT * FROM Customer;
END //
DELIMITER ;
CALL findAllCustomer();

DELIMITER //
CREATE PROCEDURE findnameCustomer(`name` VARCHAR(45))
BEGIN
  SELECT * FROM Customer
  WHERE customerName =`name`;
END //
DELIMITER ;
CALL findnameCustomer('Atelier graphique');


create view showAll as
select *
from Customer;




