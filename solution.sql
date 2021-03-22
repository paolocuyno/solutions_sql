1.CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    age INTEGER,
  	height INTEGER,
  	city VARCHAR(40),
  	favorite_color VARCHAR(40)
); 

2. INSERT INTO person
(name, age, height, city,favorite_color)
VALUES
('Zach', 26,100, 'Seattle','green'),
('Alo', 28,110, 'Sea','brown'),
('Abe', 18,115, 'Austin','yellow'),
('Ron', 38,120, 'Mesa','red'),
('Joe', 29,150, 'Lehi','blue');

3. SELECT *
FROM person
ORDER BY height DESC;

4. SELECT *
FROM person
ORDER BY height ASC;

5. SELECT *
FROM person
ORDER BY age DESC;

6. SELECT *
FROM person
WHERE age > 20;

7. SELECT *
FROM person
WHERE age = 18;

8. SELECT *
FROM person
WHERE age <20
OR age > 30;

9.SELECT *
FROM person
WHERE age !=27

10. SELECT *
FROM person
WHERE favorite_color !='red'

11. SELECT *
FROM person
WHERE favorite_color !='red'
AND favorite_color !='blue'

12. SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green');

13.SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green','blue');

14. SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');


-----
1. CREATE TABLE orders (
    order_id INTEGER,
  	person_id SERIAL PRIMARY KEY,
    product_name VARCHAR(40),
    product_price INTEGER,
  	quantity INTEGER
); 



2.INSERT INTO orders
(order_id, product_name, product_price,quantity)
VALUES
-- (1,'tv', 100,2);
-- (2,'cd',10,1);
-- (3,'fridge',100,1);
-- (4,'tv',1000,1);
-- (5,'PS5',800,1);

3. SELECT *
FROM orders;

4. SELECT count(order_id)
FROM orders;

5. SELECT sum(product_price)
FROM orders;

6. SELECT sum(product_price*quantity)
FROM orders WHERE person_id=1;


1.
-- INSERT INTO artist
-- ( name)
-- VALUES
-- ('gryffin');
-- ('kaskade');
-- ('illenium');  

2. SELECT name
FROM artist
WHERE name !=''
ORDER BY name DESC 
LIMIT 10

3. SELECT name
FROM artist
WHERE name !=''
ORDER BY name ASC
LIMIT 5

4. SELECT*
FROM artist
WHERE name LIKE 'Black%';

5.SELECT*
FROM artist
WHERE name LIKE '%Black%';

1. SELECT first_name, last_name
FROM employee
WHERE  city ='Calgary';

2. SELECT max(birth_date)
FROM employee

3.SELECT min(birth_date)
FROM employee

4.SELECT first_name, last_name
FROM employee
WHERE reports_to=2

5.SELECT count(city)
FROM employee
WHERE city='Lethbridge';

6.SELECT count(invoice_id)
FROM invoice
WHERE billing_country='USA';

7.SELECT max(total)
FROM invoice
WHERE total !=0;

8.SELECT min(total)
FROM invoice
WHERE total !=0;

9.SELECT *
FROM invoice
WHERE total >5;

10.SELECT count(invoice_id)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ')

11.SELECT avg(total)
FROM invoice

12.SELECT sum(total)
FROM invoice
