# SQL-Practics
INSERT
	
-- Example: 
INSERT INTO Student.student_express(firstname ,lastname,email) VALUES 	('jiya','pal' 'jiya@gmail.com');

INSERT MULTIPLE  
Example: 
INSERT INTO Student.student_express(firstname ,lastname,email) VALUES 	('jiya','pal','jiya@gmail.com'),
									('tiya','tiwari','tiya@gmail.com'),
								        ('maya','tejwani','maya@gmail.com');

UPDATE : The UPDATE statement is used to modify the existing records in a table. 

-- Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. 
-- The WHERE clause specifies which record(s) that should be updated. 
-- If you omit the WHERE clause, all records in the table will be updated!


-- Example: 
Update Student.student_express set firstname ="sejal"  where id =1;


DELETE :The DELETE statement is used to delete existing records in a table.
 -- Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement.
-- The WHERE clause specifies which record(s) should be deleted. 
-- If you omit the WHERE clause, all records in the table will be deleted!


for delete all : delete table table_name;

syntex : DELETE FROM table_name WHERE condition;

Example : delete from Student.student_express  where id=3003;

SELECT : The SELECT statement is used to select data from a database.
-- The data returned is stored in a result table, called the result-set.
Syntex : select * from table_name;
SELECT * FROM Student.student_express;
SELECT * FROM Student.student_express where firstname= "sejal";

Where Caluse Operator:
Operator	Description	
=		Equal	
>		Greater than	
<		Less than	
>=		Greater than or equal	
<=		Less than or equal	
<>		Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN		Between a certain range	
LIKE		Search for a pattern	
IN		To specify multiple possible values for a column


ORDER BY  : MySQL order by data sorting is important where we want to display the data in any particular order.
MySQL provides ORDER BY clause to display data in an ordered way.
The result set can be sorted in either ascending or descending order, by default it sort the data in ascending order and we
can also sort by either single or multiple columns.
Syntax : SELECT * FROM  table_name ORDER BY column_name asc or desc;
Example : 
select  * from Student.student_express order by id desc , firstname desc, lastname asc , email asc; 

LIMIT : LIMIT clause to select a limited number of records
Syntax :
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number[starting position] ,number [number  of rows to skip];

Example : 
-- SELECT LAST 3 ID FORM TABLE
select * from Student.Student_Master where Student_Master.Stu_id order by Stu_id DESC LIMIT  0,3;

IN :The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.

-- select  student  name where id = 10,100 ?
SELECT * FROM Student.Student_Master where Student_Master.Stu_id  IN ('10','100'); 

NOT IN : reverse  of IN Operator 

AND OR NOT : 
The WHERE clause can be combined with AND, OR, and NOT operators.
The AND and OR operators are used to filter records based on more than one condition:
The AND operator displays a record if all the conditions separated by AND are TRUE. 
syntax : 
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

Example : 
The OR operator displays a record if any of the conditions separated by OR is TRUE. 
syntax : 
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
Example : 

The NOT operator displays a record if the condition(s) is NOT TRUE.
Syntax : 
SELECT column1
FROM table_name
WHERE NOT condition1;
Example : 



LIKE : 
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:
  We can use and , or with like operator.
 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character

Syntax : 
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

Example : 
SELECT * FROM Student.student_express;

select  * from Student.student_express  where  firstname like 'a%';-- Finds any values that start with "a"
select  * from Student.student_express  where  firstname like '%a' and lastname like '%a';-- 	Finds any values that end with "a" in any position
select  * from Student.student_express  where  firstname like '_r%' and lastname like '_r%';-- 	Finds any values that have "r" in the second position
select  * from Student.student_express  where  firstname like 'a__%' and lastname like 'a__%';-- 	Finds any values that start with "a" and are at least 2 characters in length
select  * from Student.student_express  where  firstname  like 'a___%' and lastname like 'a___%';-- 	Finds any values that start with "a" and are at least 3 characters in length
select  * from Student.student_express  where  firstname like '   a%a';-- 	Finds any values that start with "a" and ends with "o" -- like cannot accepct space 


ANY  :
ALL :
BETWEEN :
JOIN : A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

INNER JOIN : 
SELECT * FROM candidate.candidate_master as cm join 
candidate.candidate_academic_info as cai on 
cm.candidate_id = cai.candidate_id; 

> LEFT JOIN 
SELECT * FROM candidate.candidate_master as cm LEFT JOIN
candidate.candidate_academic_info as cai on 
cm.candidate_id = cai.candidate_id;

> RIGHT JOIN
SELECT * FROM candidate.candidate_master as cm RIGHT JOIN
candidate.candidate_academic_info as cai on 
cm.candidate_id = cai.candidate_id;


> CROSS JOIN
SELECT * FROM candidate.candidate_master as cm  CROSS JOIN 
candidate.candidate_academic_info as cai on 
cm.candidate_id = cai.candidate_id;

> SELF JOIN 


_______________


-- RANDOM ID GENRATOR 
select * from Student.Student_Master where Student_Master.Stu_id order by rand() LIMIT 1;

-- check any number is in 
SELECT 25 IN(15,10,25);

--Multiplay two columns in SQL 
SELECT id , cost*quantity as  TOTAL  FROM new_schema.try  ;

https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
