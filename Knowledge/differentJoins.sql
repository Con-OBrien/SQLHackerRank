--A join is used to combine rows from two or more tables based on a related column between them. 
--Joins are essential for querying data from multiple tables in a relational database. 
--There are several types of joins in SQL, and each serves a specific purpose.

--INNER JOIN:
--The INNER JOIN returns only the rows that have matching values in both tables. 
--It filters out the rows where the specified condition evaluates to false or NULL.
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;

SELECT customers.customer_id, orders.order_id
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

--LEFT JOIN (or LEFT OUTER JOIN):
--The LEFT JOIN returns all the rows from the left table (table1) and the matching rows from the right table (table2). 
--If there is no match in the right table, it returns NULL values for the columns from the right table.
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;

SELECT customers.customer_id, orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

--RIGHT JOIN (or RIGHT OUTER JOIN):
--The RIGHT JOIN is similar to the LEFT JOIN, but it returns all the rows from the right table (table2) and the matching rows from the left table (table1). 
--If there is no match in the left table, it returns NULL values for the columns from the left table.
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;

SELECT orders.order_id, customers.customer_id
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;

--FULL JOIN (or FULL OUTER JOIN):
--The FULL JOIN returns all the rows when there is a match in either the left table (table1) or the right table (table2). 
--If there is no match in either table, it returns NULL values for the columns from the non-matching table.
SELECT columns
FROM table1
FULL JOIN table2
ON table1.column = table2.column;

SELECT customers.customer_id, orders.order_id
FROM customers
FULL JOIN orders
ON customers.customer_id = orders.customer_id;

--The CROSS JOIN returns the Cartesian product of two tables, i.e., all possible combinations of rows between the two tables. 
--It does not require any condition to be specified.
SELECT columns
FROM table1
CROSS JOIN table2;

SELECT *
FROM customers
CROSS JOIN products;







