-- Active: 1720934087814@@127.0.0.1@3306@amma_hotel
Show TABLES;
create Table menu(
  id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(30) NOT NULL,
    price FLOAT NULL,
    availability VARCHAR(30),
    food_type VARCHAR(10),
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    Created_by INT,
    updated_on DATETIME DEFAULT NULL,
    updated_by INT,
    is_deleted INT DEFAULT 0
);
    

    DROP TABLE NAME;


    create Table menu(
  id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(30) NOT NULL,
    price FLOAT NULL,
    availability VARCHAR(30),
    food_type VARCHAR(10),
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    Created_by INT,
    updated_on DATETIME DEFAULT NULL,
    updated_by INT,
    is_deleted INT DEFAULT 0

    
    create Table employee(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  age INT DEFAULT null,
  contact_number VARCHAR(20),
  address VARCHAR(100) ,
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    Created_by INT,
    updated_on DATETIME DEFAULT NULL,
    updated_by INT,
    is_deleted INT DEFAULT 0
);



    create Table order_tbl(
  id INT PRIMARY KEY AUTO_INCREMENT,
  table_id INT DEFAULT NULL,
  total_price FLOAT NOT NULL,
 created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    Created_by INT,
    updated_on DATETIME DEFAULT NULL,
    updated_by INT,
    is_deleted INT DEFAULT 0
    );

CREATE TABLE ORDER_food_mapping(
    id int PRIMARY KEY AUTO_INCREMENT,
    food_id INT NOT NULL,
    Order_id INT NOT NULL,
    quantity INT DEFAULT 1
    Foreign Key (food_id) REFERENCES menu(id),
    Foreign 
    Key (order_id) REFERENCES order_tbl(id)
);




INSERT INTO menu(food_name,price,availability,food_type,created_by)
VALUES  ('pongal',20.0,'morning','veg',1),
        ('idly',10.0,'morning','veg',1),
        ('dosa',25.0,'morning','veg',1),
        ('chappathi',30.0,'morning','veg',1),
        ('coffee',15.0,'morning','veg',1),
        ('bread-omelet',20.0,'morning','non-veg',1);



INSERT INTO order_tbl(table_id)
VALUES (4),(2),(8),(33);


INSERT INTO  order_food_mapping(food_id,order_id,qty)




VALUES  (1,4,2),
        (2,3,1),
        (3,2,4),
        (4,1,7),
        (2,1,2),
        (3,4,3),
        (1,2,5),
        (6,2,9);


SELECT * FROM menu;


select m.food_name , sum(ofm.qty) from order_food_mapping ofm
join menu m on m.id = ofm,food_id
Group BY m.food_name
ORDER BY su(ofm.qty) DESC;6


SELECT m.food_name as food,m.price,
    ofm.quantity ,ot.table_id,
    m.price*ofm.quantity as total_price
from order_tbl ot 
JOIN order_food_mapping ofm on ot.id = ofm.order_id
join menu m on ofm.food_id = m.id
WHERE ot.table_id=4;

select *from menu
ORDER BY price DESC;

SELECT m.food_type,COUNT(m.price) from menu m
Group By food_type;

select*from menu
where price= 20 BETWEEN 20 and 25;

select *from menu
where food_name LIKE'   y';

