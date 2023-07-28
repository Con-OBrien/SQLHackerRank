--SELECT: The 'SELECT' statement is used to retrieve data from one or more database tables. 
--It allows you to specify the columns you want to retrieve and apply filters using the WHERE clause.
SELECT column1, column2 FROM table_name WHERE condition=true;

--FROM: The 'FROM' clause is used to specify the table(s) from which you want to retrieve data in the SELECT statement.
SELECT column1, column2 FROM employees;

--WHERE: The 'WHERE' clause is used to filter rows based on a specified condition in the SELECT, UPDATE, or DELETE statement.
SELECT column1, column2 FROM employees WHERE department = "HR";

--INSERT INTO: The 'INSERT INTO' statement is used to add new records into a table.
INSERT INTO employees (first_name, last_name, age) VALUES ("John", "Doe", 30);

--UPDATE: The 'UPDATE' statement is used to modify existing records in a table.
UPDATE employees SET department = "Finance" WHERE employee_id = 123;

--DELETE: The 'DELETE' statement is used to remove one or more records from a table.
DELETE FROM employees WHERE age > 60;

--GROUP BY: The 'GROUP BY' clause is used to group rows with identical values in one or more columns. 
--It is commonly used with aggregate functions.
SELECT department, COUNT(*) FROM employees GROUP BY department;

--HAVING: The HAVING clause is used to filter the results of a GROUP BY query based on aggregate function results.
SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 50000;

--ORDER BY: The ORDER BY clause is used to sort the result set based on one or more columns in ascending or descending order.
SELECT product_name, price FROM products ORDER BY price DESC;

--JOIN: The JOIN clause is used to combine rows from two or more tables based on a related column between them.
SELECT orders.order_id, customers.customer_name FROM orders JOIN customers ON orders.customer_id = customers.customer_id;

--DISTINCT: The DISTINCT keyword is used to retrieve unique values from a column in the SELECT statement.
SELECT DISTINCT department FROM employees;

--AS: The AS keyword is used to assign an alias to a column or table, providing a more readable output or simplifying the use of column names.
SELECT first_name AS "First Name", last_name AS "Last Name" FROM employees;


