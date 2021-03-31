create database if not exists classic_models;


use classic_models;
create table productlines (
    productLine int primary key,
    textDescripton varchar(100),
    htmlDescription varchar(100),
    image varchar(100)
);
create table products (
    productCode int primary key,
    productName varchar(30),
    productLine varchar(50),
    productScale varchar(50),
    productVendor varchar(50),
    productDescription varchar(100),
    quantityInStock int,
    buyPrice double,
    MSRP double,
    producLine int,
    foreign key (productLine)
        references productlines (productLIne)
);


select 
    *
from
    products
where
    buyprice > 56.76
        and quantityInStock > 10;

select productCode,productName,buyprice,textDescription
from products
inner join productlines
on products.productline = productlines.producline
where buyprice > 56.76 and buyprice<95.59;

select productLine
from productlines
where productName = 'Classic Cars' or productVendor = 'Min Lin Diecast'
