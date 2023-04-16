# SQL-Practice
Aggregate functions ?
SQL aggregation function is used to perform the calculations on multiple rows of a single column of a table. It returns a single value.

![image](https://user-images.githubusercontent.com/127746039/229786223-d536c148-b30a-4f7b-aace-f0d507508b83.png)

The GROUP BY

The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

Syntax :
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);



The HAVING 

The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

Syntax : 
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s); 

