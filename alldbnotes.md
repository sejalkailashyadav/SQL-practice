


# DBMS Interview Questions :

Database Management Systems (DBMS) play a pivotal role in software applications that rely on structured storage of data. Understanding core concepts of DBMS is essential for software developers, database administrators, and data architects. 

## Questions & Answers

### 1. **What is DBMS?**
   - **Answer**: A Database Management System (DBMS) is software that controls the storage, retrieval, and updating of data in a database.
   - **Example**: Oracle, MySQL, and PostgreSQL are popular RDBMS systems.

### 2. **Distinguish between a database and a DBMS.**
   - **Answer**: A database is a structured collection of data, whereas a DBMS is the software that manages and interacts with the database.
   - **Example**: Consider a library. The collection of books is similar to a database, while the system used to manage the check-in/check-out and arrangement of books is like a DBMS.

### 3. **What is normalization? Why is it important?**
   - **Answer**: Normalization is the process of organizing data in a database to reduce redundancy and prevent data anomalies. It ensures data integrity and optimizes storage.
   - **Example**: Without normalization, a database that stores an address for each transaction could have multiple different addresses for a single customer, leading to confusion and redundancy.

### 4. **Describe the different normal forms in normalization.**
   - **Answer**: There are several normal forms, including 1NF, 2NF, 3NF, BCNF, 4NF, etc. Each form has a set of specific rules or conditions that the database schema should satisfy.
   - **Example**: 
     - **1NF**: Each table has atomic (indivisible) columns.
     - **2NF**: No non-prime attribute is dependent on the proper subset of any candidate key.
     - **3NF**: Every non-prime attribute is functionally dependent on the primary key.

### 5. **What are the ACID properties in a database?**
   - **Answer**: ACID stands for Atomicity, Consistency, Isolation, and Durability. These properties ensure reliable processing of transactions within a database.
   - **Example**: In a banking system, if you are transferring money from one account to another, the operation needs to either fully complete (money is deducted from one account and added to another) or fully fail. Partial completion could lead to data inconsistencies.

### 6. **What is SQL?**
   - **Answer**: SQL (Structured Query Language) is a domain-specific language used for managing and querying data in a relational database.
   - **Example**: 
     ```sql
     SELECT first_name, last_name FROM users WHERE age > 21;
     ```

### 7. **Explain the difference between DDL and DML.**
   - **Answer**: DDL (Data Definition Language) deals with database schema and structure modifications (e.g., `CREATE`, `ALTER`, `DROP`). DML (Data Manipulation Language) deals with data manipulation and includes commands like `SELECT`, `INSERT`, `UPDATE`, and `DELETE`.
   - **Example**:
     - DDL: 
       ```sql
       CREATE TABLE employees (ID int, Name varchar(255));
       ```
     - DML:
       ```sql
       INSERT INTO employees (ID, Name) VALUES (1, 'John Doe');
       ```

### 8. **What is a primary key?**
   - **Answer**: A primary key is a unique identifier for a record in a table. It ensures each record can be uniquely distinguished.
   - **Example**: In a `users` table, `user_id` could be a primary key, ensuring each user has a unique identifier.

### 9. **Distinguish between primary key and foreign key.**
   - **Answer**: A primary key uniquely identifies a record within a table, while a foreign key in one table is the primary key of another table, establishing a link between them.
   - **Example**: In a relational database with `authors` and `books` tables, the `author_id` could be the primary key in the `authors` table and a foreign key in the `books` table.

### 10. **What is a deadlock? How can it be avoided?**
   - **Answer**: A deadlock is a situation in which two or more transactions are unable to proceed because each is waiting for the other to release a resource. Deadlocks can be prevented through techniques like timeout, deadlock detection, or ordering the resources.
   - **Example**: Transaction A holds Resource 1 and waits for Resource 2, which is held by Transaction B. Transaction B waits for Resource 1, resulting in a cyclic wait condition or deadlock.

### 11. **What is indexing and why is it used?**
   - **Answer**: Indexing is a technique used to speed up retrieval operations on a database. It works similarly to an index in a book, allowing the database system to find the required data without scanning every row in a database table.
   - **Example**: A `user_email` index on the `users` table ensures faster lookups when searching by email.

### 12. **What are views in a database?**
   - **Answer**: A view is a virtual table based on the result-set of an SQL statement. It contains rows and columns, similar to a real table, but does not store data physically.
   - **Example**: A view that lists all users who have registered in the past month can be created using an SQL statement filtering on the registration date.

### 13. **Describe the difference between inner join, left join, and right join in SQL.**
   - **Answer**: An inner join returns rows when there is a match in both tables. A left join returns all rows from the left table and matching rows from the right table. A right join returns all rows from the right table and matching rows from the left table.
   - **Example**:
     ```sql
     SELECT orders.order_id, customers.customer_name
     FROM orders
     INNER JOIN customers
     ON orders.customer_id = customers.customer_id;
     ```

---
# DDL || DML || DQL || TCL || DCL
| ID | Name  | Role      | Salary |
|----|-------|-----------|--------|
| 1  | John  | Manager   | 60000  |
| 2  | Jane  | Engineer  | 50000  |
| 3  | Jake  | Engineer  | 50000  |

Now, let's delve into the different types of SQL commands:

1. **DDL (Data Definition Language)**:
    - `CREATE`: Creates a new table.
        ```sql
        CREATE TABLE Employees (
            ID INT PRIMARY KEY,
            Name VARCHAR(50),
            Role VARCHAR(50),
            Salary INT
        );
        ```
    - `ALTER`: Modifies the table structure.
        ```sql
        ALTER TABLE Employees ADD COLUMN Department VARCHAR(50);
        ```
    - `DROP`: Deletes the table.
        ```sql
        DROP TABLE Employees;
        ```

2. **DML (Data Manipulation Language)**:
    - `SELECT`: Retrieves data from a table.
        ```sql
        SELECT * FROM Employees WHERE Role = 'Engineer';
        ```
    - `INSERT`: Adds new data into the table.
        ```sql
        INSERT INTO Employees (ID, Name, Role, Salary) VALUES (4, 'Mike', 'Intern', 30000);
        ```
    - `UPDATE`: Modifies existing data in the table.
        ```sql
        UPDATE Employees SET Salary = 55000 WHERE Name = 'Jane';
        ```
    - `DELETE`: Removes data from the table.
        ```sql
        DELETE FROM Employees WHERE Name = 'Jake';
        ```

3. **DCL (Data Control Language)**:
    - `GRANT`: Provides specific privileges to a user.
        ```sql
        GRANT SELECT, INSERT ON Employees TO some_user;
        ```
    - `REVOKE`: Removes specific privileges from a user.
        ```sql
        REVOKE INSERT ON Employees FROM some_user;
        ```

4. **TCL (Transaction Control Language)**:
    - `BEGIN TRANSACTION`: Begins a new transaction.
        ```sql
        BEGIN TRANSACTION;
        ```
    - `COMMIT`: Commits the current transaction.
        ```sql
        COMMIT;
        ```
    - `ROLLBACK`: Rolls back the current transaction to the beginning or to a savepoint.
        ```sql
        ROLLBACK;
        ```
    - `SAVEPOINT`: Creates a savepoint within a transaction to which you can later roll back.
        ```sql
        SAVEPOINT Savepoint1;
        ```
        example :
1. **COMMIT**:
    - What it does: It permanently saves any transactional updates into the database. After committing, you cannot undo the changes.
    
    - Example:
        ```sql
        BEGIN TRANSACTION; -- or just BEGIN;
        UPDATE Employees SET Salary = Salary + 5000 WHERE Role = 'Engineer';
        COMMIT;
        ```

2. **ROLLBACK**:
    - What it does: It undoes any changes made during the current transaction and reverts to the previous state before the transaction began.
    
    - Example:
        ```sql
        BEGIN TRANSACTION;
        DELETE FROM Employees WHERE Role = 'Intern';
        -- Oops, I changed my mind!
        ROLLBACK;
        ```

3. **SAVEPOINT**:
    - What it does: It creates a point within a transaction to which you can later roll back, instead of rolling back the entire transaction. This allows you to have nested levels of transactions.
    
    - Example:
        ```sql
        BEGIN TRANSACTION;
        UPDATE Employees SET Salary = 55000 WHERE Name = 'Jane';

        SAVEPOINT SavepointA;

        INSERT INTO Employees (Name, Role, Salary) VALUES ('Mike', 'Intern', 30000);

        -- Oh no, I shouldn't have added Mike as an Intern.
        ROLLBACK TO SavepointA; -- This will only undo the INSERT operation, not the UPDATE operation.

        COMMIT; -- This will save the changes from the UPDATE operation but not the INSERT.
        ```

5. **DQL (Data Query Language)**:
    - Primarily consists of the `SELECT` command to query and retrieve data. It's often considered a part of DML, but some sources separate it.
        ```sql
        SELECT Name, Role FROM Employees WHERE Salary > 50000;
        ```

The above examples provide an overview of the various SQL command types and how they operate on data and database structures.

# ACID Properties

The ACID properties are a set of properties that ensure reliable processing of transactions in a database management system (DBMS). The acronym "ACID" stands for Atomicity, Consistency, Isolation, and Durability.

1. **Atomicity**:
    - **Definition**: Atomicity ensures that a transaction is treated as a single unit, which means either all of its operations are executed or none of them are.
    - **Example**: Let's say you're making an online transfer from one bank account to another. The operation consists of deducting the amount from one account and adding it to another. If, for some reason, the amount is deducted from one account but not added to the receiving account (e.g., due to a system crash or failure), the whole transaction will be rolled back, ensuring that the amount is not lost.

2. **Consistency**:
    - **Definition**: Consistency ensures that the database remains in a consistent state before and after the transaction. This means that any transaction will bring the database from one valid state to another.
    - **Example**: Suppose there's a rule that the minimum balance in a bank account must be $100. If a transaction attempts to reduce the balance below $100, the transaction will be aborted to ensure the consistency rule is not violated.

3. **Isolation**:
    - **Definition**: Isolation ensures that concurrent execution of transactions results in a system state that would be obtained if transactions were executed serially (one after the other). This means that the operations of one transaction are isolated from the operations of other transactions.
    - **Example**: Imagine two people trying to book the last seat on a flight at the same time. Even if their booking operations happen concurrently, the isolation property will ensure that only one person successfully books the seat while the other receives an error or a notification that the seat has already been booked.

4. **Durability**:
    - **Definition**: Durability ensures that once a transaction has been committed, it remains committed even in the case of a system failure. This is typically achieved by storing the transaction logs or by ensuring data is flushed to permanent storage.
    - **Example**: After confirming the receipt of a payment in an online store, the transaction data is stored in permanent storage. If there's a system crash shortly after the payment confirmation, the data related to that transaction won't be lost, thanks to durability. When the system restarts, the transaction will still be in a committed state.

# Normalization

Normalization is a process in relational database design that organizes tables to minimize data redundancy and dependency by dividing larger tables into smaller ones and defining relationships between them. The main goals of normalization are:

1. Eliminating redundant data.
2. Ensuring data is stored logically.
3. Reducing the potential for anomalies during data operations (insertion, update, deletion).

**Real-time Example of Normalization**:

Imagine a university database with a table called `Students`:

| StudentID | FullName | Subjects                           | ContactNumber |
|-----------|----------|------------------------------------|---------------|
| 1         | John Doe | Math, Science, History             | 1234567890    |
| 2         | Jane Doe | Science, History                   | 0987654321    |
| 3         | Sam Smith| Math, History, Physical Education  | 1122334455    |

Issues with the table:

1. The Subjects column has multiple values, making it challenging to query specific subjects or modify one subject for a student.
2. If we need to change the name of a subject, we have to do it in multiple places.
3. Deleting a student row might inadvertently delete information about which subjects are offered.

To normalize, we'd break this table down:

1. **Student Table**:

| StudentID | FullName   | ContactNumber |
|-----------|------------|---------------|
| 1         | John Doe   | 1234567890    |
| 2         | Jane Doe   | 0987654321    |
| 3         | Sam Smith  | 1122334455    |

2. **Subjects Table**:

| SubjectID | SubjectName |
|-----------|-------------|
| 1         | Math        |
| 2         | Science     |
| 3         | History     |
| 4         | Physical Education |

3. **StudentSubjects Table**:

| StudentID | SubjectID |
|-----------|-----------|
| 1         | 1         |
| 1         | 2         |
| 1         | 3         |
| 2         | 2         |
| 2         | 3         |
| 3         | 1         |
| 3         | 3         |
| 3         | 4         |

This normalized design eliminates redundancy and reduces the potential for anomalies.

**Types of Normal Forms**:

1. **First Normal Form (1NF)**: Each table has a primary key, and each column contains atomic, indivisible values.
2. **Second Normal Form (2NF)**: All non-key attributes are fully functionally dependent on the primary key. This basically means no partial dependencies of columns on the primary key.
3. **Third Normal Form (3NF)**: All the attributes in a table are functionally dependent only on the primary key.
4. **Boyce-Codd Normal Form (BCNF)**: A more stringent version of the 3NF. For any non-trivial functional dependency X -> Y, X should be a super key.
5. **Fourth Normal Form (4NF)**: Concerned with multi-valued facts. There shouldn't be any dependencies amongst unrelated facts.
6. **Fifth Normal Form (5NF)**: Concerned with join dependencies.
7. **Sixth Normal Form (6NF)**: Concerned with temporal databases and how data is valid over certain periods of time.


# Keys
### 1. **Primary Key**:

- **Definition**: A column or set of columns that uniquely identifies a record within a table.
  
- **Use**: Ensures that each row in the table is unique.

- **Example**:
  ```
  CREATE TABLE Students (
      StudentID INT PRIMARY KEY,
      FirstName VARCHAR(255),
      LastName VARCHAR(255)
  );
  ```
  Here, `StudentID` is a primary key, meaning each student must have a unique ID.

### 2. **Foreign Key**:

- **Definition**: A column or set of columns in one table that refers to the primary key in another table.
  
- **Use**: Ensures referential integrity in the relationship between two tables.

- **Example**:
  ```
  CREATE TABLE Enrollments (
      EnrollmentID INT PRIMARY KEY,
      StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
      CourseName VARCHAR(255)
  );
  ```
  Here, `StudentID` in the `Enrollments` table is a foreign key that references `StudentID` in the `Students` table.

### 3. **Unique Key**:

- **Definition**: A column or set of columns where all values must be unique, similar to the primary key, but a table can have multiple unique keys.
  
- **Use**: Ensures uniqueness of values in columns where it's applied.

- **Example**:
  ```
  CREATE TABLE Users (
      UserID INT PRIMARY KEY,
      Email VARCHAR(255) UNIQUE,
      Password VARCHAR(255)
  );
  ```
  Here, the `Email` column is a unique key, ensuring no two users have the same email address.

### 4. **Composite Key**:

- **Definition**: A type of key that consists of two or more columns to ensure uniqueness within the database.
  
- **Use**: When no single column is sufficient to uniquely identify records.

- **Example**:
  ```
  CREATE TABLE Enrollments (
      StudentID INT,
      CourseID INT,
      EnrollmentDate DATE,
      PRIMARY KEY (StudentID, CourseID)
  );
  ```
  Here, the combination of `StudentID` and `CourseID` acts as a composite key.

### 5. **Candidate Key**:

- **Definition**: A column or set of columns that can be chosen as a primary key. There can be multiple candidate keys, but only one can be the primary key.
  
- **Use**: To identify potential primary keys.

- **Example**: In a table with columns `Email`, `MobileNumber`, and `UserID`, all three columns can be candidate keys if they can uniquely identify a record.

### 6. **Secondary (or Alternate) Key**:

- **Definition**: Any candidate key which is not chosen as the primary key.
  
- **Use**: Useful for retrieval and access purposes.

- **Example**: If in a table `UserID` is the primary key, then `Email` and `MobileNumber` (both unique) would be secondary or alternate keys.

### 7. **Super Key**:

- **Definition**: A set of one or more columns that can be used to identify records uniquely. A super key may contain additional columns that are not strictly required for unique identification.
  
- **Use**: To understand potential combinations for unique identification.

- **Example**: In a table with columns `UserID` and `Email`, `{UserID}`, `{Email}`, and `{UserID, Email}` are all super keys, but only the first two are candidate keys.

# `DROP` vs  `DELETE` vs `TRUNCATE`

### 1. `DELETE`:

- **Definition**: `DELETE` is used to remove rows from a table based on a condition. If no condition is specified, all rows will be deleted.
  
- **Characteristics**:
  - It's a logged operation, meaning every row deletion is recorded in the logs. This can make the operation slower, especially for large data.
  - It doesn't free the space associated with the table but makes it available for future inserts.
  - You can use a `WHERE` clause to specify criteria for deletion.
  - It triggers DELETE triggers in the database.

- **Example**:
  ```sql
  DELETE FROM students WHERE student_id = 5;
  ```

### 2. `TRUNCATE`:

- **Definition**: `TRUNCATE` quickly removes all rows from a table, resetting the space occupied by the table to its minimum.
  
- **Characteristics**:
  - Typically, it's a minimally logged operation, making it faster than DELETE.
  - It frees the space back to the system, effectively resetting the table to be like a new one.
  - You cannot use a `WHERE` clause. It will remove all rows.
  - Doesn't generally activate triggers as it doesn't operate on individual rows.

- **Example**:
  ```sql
  TRUNCATE TABLE students;
  ```

### 3. `DROP`:

- **Definition**: The `DROP` command removes an entire table or database from the database system.
  
- **Characteristics**:
  - All space associated with the object (table, database, etc.) is released back to the system.
  - The structure/schema of the object is also deleted, meaning you lose both the data and the design.
  - It's not a logged operation in terms of individual rows (since the whole structure is removed).
  - There's no going back after a DROP without a backup.

- **Example**:
  ```sql
  DROP TABLE students;
  ```

### Main Differences:

- **Scope**: `DELETE` operates on rows, `TRUNCATE` operates on the entire table (but retains the structure), and `DROP` removes the entire table or database structure and data.
- **Speed**: `TRUNCATE` is usually faster than `DELETE` because it's less logged. `DROP` is fast because it removes the entire object.
- **Space**: After `TRUNCATE` and `DROP`, space is freed to the system, while `DELETE` just makes it available for future rows in the same table.
- **Flexibility**: Only `DELETE` allows for conditional removal based on the data in the rows.

# Join 

### 1. **INNER JOIN (or JOIN)**:

- **Definition**: Returns records that have matching values in both tables.
  
- **Example**:
  ```sql
  SELECT employees.name, orders.order_id
  FROM employees
  INNER JOIN orders ON employees.employee_id = orders.employee_id;
  ```
  This returns all employees and their orders, but only for employees who have made at least one order.

### 2. **LEFT JOIN (or LEFT OUTER JOIN)**:

- **Definition**: Returns all records from the left table, and the matched records from the right table. If there's no match, the result is NULL on the right side.
  
- **Example**:
  ```sql
  SELECT students.name, courses.course_name
  FROM students
  LEFT JOIN enrollments ON students.student_id = enrollments.student_id
  LEFT JOIN courses ON enrollments.course_id = courses.course_id;
  ```
  This fetches all students and the courses they are enrolled in, but it will also include students not enrolled in any course (with NULL for course names).

### 3. **RIGHT JOIN (or RIGHT OUTER JOIN)**:

- **Definition**: Returns all records from the right table, and the matched records from the left table. If there's no match, the result is NULL on the left side.
  
- **Example**:
  ```sql
  SELECT students.name, books.book_title
  FROM students
  RIGHT JOIN book_ownership ON students.student_id = book_ownership.student_id
  RIGHT JOIN books ON book_ownership.book_id = books.book_id;
  ```
  This fetches all books and their respective owners. If a book has no owner, it'll still be listed (with NULL for the student's name).

### 4. **FULL JOIN (or FULL OUTER JOIN)**:

- **Definition**: Returns all records when there's a match in one of the left or right tables. Combines the effects of both LEFT and RIGHT joins.
  
- **Example**:
  ```sql
  SELECT customers.name, orders.order_id
  FROM customers
  FULL JOIN orders ON customers.customer_id = orders.customer_id;
  ```
  This fetches all customers and their orders, but it also includes customers with no orders and orders that have no linked customer.

### 5. **CROSS JOIN**:

- **Definition**: Returns the Cartesian product of the two tables. It pairs every row from the first table with every row from the second table.
  
- **Example**:
  ```sql
  SELECT colors.color_name, sizes.size_label
  FROM colors
  CROSS JOIN sizes;
  ```
  If you have a `colors` table with colors (Red, Blue) and a `sizes` table with sizes (Small, Medium), this would return all combinations: Red-Small, Red-Medium, Blue-Small, Blue-Medium.

### 6. **SELF JOIN**:

- **Definition**: A join of a table with itself. Useful when the data related to each other is in the same table.
  
- **Example**:
  ```sql
  SELECT A.employee_name, B.employee_name as 'Manager'
  FROM employees A, employees B
  WHERE A.manager_id = B.employee_id;
  ```
  This fetches every employee alongside their respective managers from an `employees` table, where managers are also employees in the same table.


# Understanding Redundancy:

1. **Definition**: Redundancy in DBMS is when data is repeated in the database unnecessarily, leading to a waste of storage and potential inconsistencies.

2. **Problems caused by Redundancy**:
   - **Update Anomaly**: Difficulty in updating data. For instance, if the same data is stored in multiple locations, updating it in one place but not the others can lead to inconsistencies.
   - **Insert Anomaly**: There might be scenarios where certain data cannot be inserted without the presence of other data.
   - **Delete Anomaly**: Removing a record might unintentionally remove valuable data if the data is stored redundantly.

### Example of Redundancy:

Consider a simple database for a school system. Let's take a table `Classes`:

| StudentName | Subject       | TeacherName |
|-------------|---------------|-------------|
| Alice       | Mathematics   | Mr. Smith   |
| Bob         | Mathematics   | Mr. Smith   |
| Charlie     | English       | Mrs. Doe    |
| Alice       | English       | Mrs. Doe    |

From the table, you can observe redundancy:

1. The teacher's name for each subject is repeated for every student taking that subject. If there's a change in the teacher for a subject, you'd have to update multiple rows.
  
2. If you wanted to delete a student's record, you would also be deleting the teacher associated with them, which isn't ideal.

3. If you wanted to add a new subject, you'd need a student to associate with it right away, which might not always be the case.

### Solutions:

1. **Normalization**: This is the process of organizing data to minimize redundancy. In the above example, normalization might involve creating separate tables for `Students`, `Subjects`, and `Teachers`, and then using foreign keys to establish relationships.

2. **Regular Audits**: Periodically checking the database for redundancy can help in keeping it clean and efficient.


====================================================================================

Data Redundancy : Unnecessery duplication of data in database or accros multiple databases.
					Problems :
					1.Stroage Cost
					2.Inconsistance[not update all data but it should be]
					3.Mainteanance of data when need to update that data 

					Examples : 
					     Customer Table:

						| CustomerID | Name       | Address          | Phone        |
						|------------|------------|------------------|--------------|
						| 1          | Alice Smith | 123 Elm St       | 555-1234     |
						| 2          | Bob Brown   | 456 Oak St       | 555-5678     |

						Order Table:

						| OrderID | CustomerName | CustomerAddress  | CustomerPhone |
						|---------|--------------|------------------|---------------|
						| 1001    | Alice Smith  | 123 Elm St       | 555-1234      |
						| 1002    | Bob Brown    | 456 Oak St       | 555-5678      |

						Here Customers details such as address , phone , name is store in both of the table.

					Solution : Normalization

====================================================================================
Data Integrity : Accurate , relible , update infomation should store in database.
				 we can maintain using validations , Normalizations , Constrain.

				Examples :

					Products Table:

					| ProductID | ProductName | Price |
					|-----------|-------------|-------|
					| 1         | Widget A     | 19.99 |
					| 2         | Widget B     | 29.99 |

					Orders Table:

					| OrderID | ProductID | Quantity |
					|---------|-----------|----------|
					| 1001    | 1         | 10       |
					| 1002    | 2         | 5        |

					Maintaining data integrity would involve ensuring:

					- The `ProductID` in the `Orders` table exists in the `Products` table (referential integrity).
					- Prices in the `Products` table are correct and reflect actual product costs.
					- Quantities ordered are valid and positive numbers.

					If `ProductID` 1 is deleted from the `Products` table, it should also be removed or handled in the `Orders` table to prevent orphaned records.
====================================================================================
Data Consistancy : data accros database should be in accurate & realible.

			Examples :
			**Products Table:**

			| ProductID | ProductName | StockQuantity |
			|-----------|-------------|---------------|
			| 101       | Widget A     | 50            |
			| 102       | Widget B     | 30            |

			**Sales Table:**

			| SaleID | ProductID | QuantitySold |
			|--------|-----------|--------------|
			| 2001   | 101       | 5            |
			| 2002   | 102       | 3            |

		  Issue: Inconsistent Stock Quantities

			Suppose a sale is made and the stock quantity in the `Products` table is not updated accordingly. For example, if Widget A (ProductID 101) is sold 10 units, but the `StockQuantity` in the `Products` table is not updated, there would be a discrepancy.

			**Expected Update After Sale:**

			After selling 10 units of Widget A, the `Products` table should be updated:

			**Products Table (Corrected):**

			| ProductID | ProductName | StockQuantity |
			|-----------|-------------|---------------|
			| 101       | Widget A     | 40            |  (50 - 10)
			| 102       | Widget B     | 30            |

			However, if the `StockQuantity` remains at 50, it creates an inconsistency:

			**Products Table (Incorrect):**

			| ProductID | ProductName | StockQuantity |
			|-----------|-------------|---------------|
			| 101       | Widget A     | 50            |
			| 102       | Widget B     | 30            |

			Consequences of Inconsistent Data

			1. **Inventory Mismatch:** If the stock quantity in the database does not reflect actual inventory levels, the store might face issues like overselling products or running out of stock unexpectedly.

			2. **Customer Frustration:** Inconsistent data can lead to orders being placed for items that are no longer in stock, frustrating customers and potentially leading to loss of sales.

			3. **Operational Issues:** Inconsistent data can affect restocking decisions, financial reports, and overall business operations.

====================================================================================
Normalization : to maintain data reduancy & improve data consistancy , data inregrity.it break downs a database in to 
				feasible parts to perform operations.   

			Eaxmples :
			let suppose i have employee table that contains all information related to employee

			Unnormalized Table (Before Normalization)

			Employee Table:

			| EmployeeID | Name        | Department | DepartmentLocation |
			|------------|-------------|------------|---------------------|
			| 1          | John Doe    | Sales      | New York            |
			| 2          | Jane Smith  | Marketing  | San Francisco       |
			| 3          | Jim Brown   | Sales      | New York            |

			Here, we have some redundancy: the department information (i.e., `Department` and `DepartmentLocation`) is repeated for each employee in that department.

			we can solve using Normalization.
			There are 
			1.1NF
			2.2NF
			3.3NF
			4.BCNF 
			5.4NF
			6.5NF
			7.6NF 	
=========================================================================================================
anomalies ?

 **anomalies** refer to issues that can arise due to poor normalization, leading to inconsistent or redundant data. Here are the main types of anomalies:

1. **Update Anomaly**:
   - **Description**: Occurs when updating data in one place requires changes in multiple places, leading to potential inconsistencies.
   - **Example**: If an instructor's department changes, you must update it in every row where that instructor appears. Failing to do so might result in different departments listed for the same instructor.

2. **Insertion Anomaly**:
   - **Description**: Occurs when you cannot insert data into a table without having to insert unwanted or null values in other columns.
   - **Example**: If you want to add a new course but have no students yet, you might be forced to leave other required fields (like instructor details) empty.

3. **Deletion Anomaly**:
   - **Description**: Occurs when deleting data inadvertently removes unintended information.
   - **Example**: If you delete a course from the table, and that course is the only one for an instructor, you might also unintentionally lose the instructor's information.

=======================================================================================
### **Normalization Example: From Raw Data to 4NF**

---

#### **Initial Table in 1NF**
We start with a raw dataset containing redundant and unnormalized data:

| **StudentID** | **StudentName** | **CourseName** | **InstructorName** |
|---------------|-----------------|----------------|---------------------|
| 1                    | Alice           | Math           | Prof. Smith         |
| 1                     | Alice           | Science        | Prof. Johnson       |
| 2                     | Bob             | Math           | Prof. Smith         |
| 2                      | Bob             | History        | Prof. Lee           |

- The table satisfies **1NF** because all attributes have atomic values.
- **Primary Key:** (`StudentID`, `CourseName`)

=====

In the given table, the primary key is a combination of two columns: `StudentID` and `CourseName`. This is called a **composite primary key**, meaning both columns together uniquely identify each row.

Now, the issue is:

- **`StudentName`** depends only on `StudentID`. For example, if we know `StudentID = 1`, we already know the student's name is "Alice," regardless of the course. It doesn’t depend on `CourseName`.
- **`InstructorName`** depends only on `CourseName`. For example, if we know `CourseName = Math`, we know the instructor is "Prof. Smith," regardless of the student.

Since these columns depend only on **parts** of the composite key (not the whole key), they are **partially dependent**. This violates the rule of **2NF**, which says **non-prime attributes must depend on the whole primary key, not just part of it.**

That's why the table is not in 2NF.

======
---

### **Step 1: Move to 2NF**
1NF is not in **2NF** because non-prime attributes (`StudentName`, `InstructorName`) are partially dependent on a part of the composite primary key (`StudentID`, `CourseName`).

#### **Decomposition for 2NF**:
1. **Students Table**  
   This table removes partial dependency by isolating `StudentName`:

   | **StudentID** | **StudentName** |
   |---------------|-----------------|
   | 1             | Alice           |
   | 2             | Bob             |

2. **Courses Table**  
   This table isolates `CourseName` and `InstructorName`:

   | **CourseName** | **InstructorName** |
   |----------------|---------------------|
   | Math           | Prof. Smith         |
   | Science        | Prof. Johnson       |
   | History        | Prof. Lee           |

3. **StudentCourses Table**  
   This table links `StudentID` to their enrolled `CourseName`:

   | **StudentID** | **CourseName** |
   |---------------|----------------|
   | 1             | Math           |
   | 1             | Science        |
   | 2             | Math           |
   | 2             | History        |

---

### **Step 2: Move to 3NF**
The schema in 2NF still contains a **transitive dependency**:
- In the `Courses` table, `InstructorName` depends on `CourseName`.

#### **Decomposition for 3NF**:
1. **Courses Table**  
   Break the dependency into two separate tables. Add `CourseID` to uniquely identify courses:

   | **CourseID** | **CourseName** |
   |--------------|----------------|
   | 101          | Math           |
   | 102          | Science        |
   | 103          | History        |

2. **Instructors Table**  
   Map `CourseID` to `InstructorName`:

   | **CourseID** | **InstructorName** |
   |--------------|---------------------|
   | 101          | Prof. Smith         |
   | 102          | Prof. Johnson       |
   | 103          | Prof. Lee           |

3. Update **StudentCourses Table** to include `CourseID` instead of `CourseName`:

   | **StudentID** | **CourseID** |
   |---------------|--------------|
   | 1             | 101          |
   | 1             | 102          |
   | 2             | 101          |
   | 2             | 103          |

---

### **Step 3: Move to 4NF**
The schema satisfies **BCNF**, as every determinant is a candidate key. Next, we check for **multivalued dependencies**.

- **Multivalued Dependency Check:**  
   A student can be linked to multiple courses, and a course can have multiple students.  
   These dependencies are already represented by the `StudentCourses` table.  
   There are no independent multivalued facts, so **4NF is already satisfied.**

---

### **Final Schema (Up to 4NF)**
1. **Students Table**  
   | **StudentID** | **StudentName** |
   |---------------|-----------------|
   | 1             | Alice           |
   | 2             | Bob             |

2. **Courses Table**  
   | **CourseID** | **CourseName** |
   |--------------|----------------|
   | 101          | Math           |
   | 102          | Science        |
   | 103          | History        |

3. **Instructors Table**  
   | **InstructorID** | **InstructorName** |
   |------------------|---------------------|
   | 1                | Prof. Smith         |
   | 2                | Prof. Johnson       |
   | 3                | Prof. Lee           |

4. **StudentCourses Table**  
   | **StudentID** | **CourseID** |
   |---------------|--------------|
   | 1             | 101          |
   | 1             | 102          |
   | 2             | 101          |
   | 2             | 103          |

5. **CourseInstructors Table**  
   | **CourseID** | **InstructorID** |
   |--------------|------------------|
   | 101          | 1                |
   | 102          | 2                |
   | 103          | 3                |

---

### **Conclusion**
- The schema has been normalized to 4NF.
- There are no anomalies, multivalued dependencies, or transitive dependencies.
- **Further normalization to 5NF is unnecessary**, as there are no join dependencies in this example.

====================================================================================
### **Database Transactions**
A **database transaction** is a sequence of operations performed as a single logical unit of work. It ensures that all operations in the transaction are completed successfully, or none are applied to the database. 

#### **Key Properties (ACID)**
1. **Atomicity**: The transaction is treated as a single unit. Either all operations are executed, or none are.
2. **Consistency**: Ensures the database remains in a consistent state before and after the transaction.
3. **Isolation**: Transactions operate independently of each other.
4. **Durability**: Once a transaction is committed, changes are permanent even in the case of a system failure.
with examples : 

### Scenario: Bank Transfer
A customer transfers $100 from Account A to Account B.

1. **Atomicity**:  
   - The transaction ensures both the debit from Account A and the credit to Account B occur together.  
   - If the debit fails, the credit is also rolled back.

2. **Consistency**:  
   - Before the transaction, the total balance across accounts is $1,000.  
   - After the transaction, the total remains $1,000 (no data corruption).

3. **Isolation**:  
   - If another transaction (e.g., another transfer) happens simultaneously, it won’t affect the outcome of this transaction.  
   - Each transaction is isolated.

4. **Durability**:  
   - Once the transfer is complete and committed, the changes (debit and credit) remain in the database, even if the system crashes immediately afterward.

====================================================================================

### **Database Lock**
A **database lock** is a mechanism to control concurrent access to data. Locks prevent conflicts and ensure data integrity during simultaneous transactions.

#### **Types of Locks**
1. **Shared Lock**: Multiple transactions can read the same data simultaneously, but they cannot modify it.
2. **Exclusive Lock**: Only one transaction can access the data for modification; others are blocked.
3. **Row-level Locking**: Restricts access to specific rows.
4. **Table-level Locking**: Restricts access to an entire table.
5. **Deadlock**: A situation where two or more transactions wait for each other to release locks, causing a standstill.

====================================================================================

### **Database Trigger**
A **trigger** is a set of SQL statements that are automatically executed in response to certain events on a table or view.

#### **Types of Triggers**
1. **BEFORE Trigger**: Executes before an insert, update, or delete operation.
2. **AFTER Trigger**: Executes after an insert, update, or delete operation.
3. **INSTEAD OF Trigger**: Replaces the triggering operation (common in views).

#### **Use Cases**
- Enforcing business rules.
- Auditing changes in data.
- Automatically updating related tables. 

-### **Deep Dive into Database Triggers**

#### **What is a Trigger?**
A **database trigger** is a procedural code automatically executed in response to specific events on a database table or view. Triggers are particularly useful for enforcing rules, ensuring data integrity, or automating workflows.

---

### **Components of a Trigger**
1. **Event**: The action that activates the trigger (e.g., `INSERT`, `UPDATE`, `DELETE`).
2. **Timing**: Defines when the trigger is executed relative to the event:
   - **BEFORE**: Executes before the event (useful for validation).
   - **AFTER**: Executes after the event (useful for logging or maintaining history).
   - **INSTEAD OF**: Replaces the triggering event (mainly for views).
3. **Body**: The SQL statements or procedural logic executed when the trigger is fired.


### **Types of Triggers**
1. **Row-level Triggers**: Executes once for each row affected by the event.
2. **Statement-level Triggers**: Executes once for the entire statement, regardless of how many rows are affected.

### **Types of Triggers: Row-Level vs Statement-Level**

Triggers can be categorized based on how often they execute in response to an event:

### **1. Row-Level Triggers**
- **Definition**: Executes once for each row affected by the triggering event (`INSERT`, `UPDATE`, or `DELETE`).
- **Use Case**: Ideal when you need to validate or process each row individually.

#### **Example: Row-Level Trigger**
Log changes for each row that is updated in the `employees` table.

```sql
CREATE TRIGGER log_employee_update
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit (employee_id, old_salary, new_salary, updated_at)
    VALUES (OLD.id, OLD.salary, NEW.salary, NOW());
END;
```

#### **Explanation**:
- Trigger fires **once for each row** updated in the `employees` table.
- Logs the old and new salary for every updated row in the `employee_audit` table.

#### **Scenario**:
If 5 rows in the `employees` table are updated in a single `UPDATE` statement, this trigger will execute 5 times (once for each row).

---

### **2. Statement-Level Triggers**
- **Definition**: Executes once for the entire SQL statement, regardless of how many rows are affected.
- **Use Case**: Suitable for actions that are independent of the number of rows, such as logging when a bulk operation occurs.

#### **Example: Statement-Level Trigger**
Log a message whenever rows in the `employees` table are updated.

```sql
CREATE TRIGGER log_employee_update_statement
AFTER UPDATE ON employees
BEGIN
    INSERT INTO audit_log (action, table_name, timestamp)
    VALUES ('UPDATE', 'employees', NOW());
END;
```

#### **Explanation**:
- Trigger fires **once for the entire update operation**.
- Logs the fact that an update occurred on the `employees` table into the `audit_log` table.

#### **Scenario**:
If 5 rows in the `employees` table are updated in a single `UPDATE` statement, this trigger will execute **once** (regardless of the number of rows affected).

---

### **Comparison**

| Feature                  | Row-Level Trigger                     | Statement-Level Trigger             |
|--------------------------|----------------------------------------|-------------------------------------|
| **Execution Frequency**  | Once for each affected row            | Once for the entire SQL statement   |
| **Granularity**          | Fine-grained, row-specific logic       | Coarse-grained, statement-level logic |
| **Use Case**             | Logging/validating each row's changes | Auditing/logging bulk operations    |

---

### **Practical Example**

Imagine an `orders` table where:
- You want to **track changes for each order** (`Row-Level`).
- You want to **log that a bulk operation was performed** (`Statement-Level`).

#### **Row-Level Trigger**:
```sql
CREATE TRIGGER after_order_update
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
    INSERT INTO order_changes (order_id, old_status, new_status, change_date)
    VALUES (OLD.id, OLD.status, NEW.status, NOW());
END;
```

#### **Statement-Level Trigger**:
```sql
CREATE TRIGGER after_bulk_order_update
AFTER UPDATE ON orders
BEGIN
    INSERT INTO operation_log (operation, table_name, timestamp)
    VALUES ('Bulk Update', 'orders', NOW());
END;
```

#### **Scenario**:
- If 10 rows in the `orders` table are updated:
  - The **Row-Level Trigger** fires **10 times**, logging details for each order.
  - The **Statement-Level Trigger** fires **once**, logging that a bulk update occurred.

====================================================================================
### **What is a Procedure?**

A **procedure** (or stored procedure)  in a database is a set of SQL statements that can be executed together to perform a specific task. It is stored within the database and can be called (executed) whenever needed.

#### **Features of a Procedure**:
- It is explicitly invoked using a `CALL` statement.
- Accepts **parameters**: 
  - **IN**: Input-only parameter.
  - **OUT**: Output-only parameter.
  - **INOUT**: Input and output parameter.
- Used for tasks like data processing, calculations, and automating repetitive database operations.
- Can return multiple result sets and output values.

---

#### **Example of a Procedure**:
A procedure to calculate the total sales for a given product.

```sql
CREATE PROCEDURE GetTotalSales(IN product_id INT, OUT total_sales DECIMAL(10, 2))
BEGIN
    SELECT SUM(amount) INTO total_sales
    FROM sales
    WHERE product_id = product_id;
END //

DELIMITER ;
```

#### **Usage**:
Call the procedure with parameters:
```sql
CALL GetTotalSales(101, @sales);
SELECT @sales; -- Outputs the total sales for product ID 101
```

---

### **Difference Between Triggers and Procedures**
Here’s a simplified comparison between **Triggers** and **Procedures** in databases:

| **Feature**             | **Triggers**                                                                 | **Procedures**                                                                |
|-------------------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| **Basics**              | Automatically invoked by events like `INSERT`, `DELETE`, or `UPDATE`.         | Explicitly called by users or applications via commands like `EXEC` or `CALL`. |
| **Action**              | Executes automatically when a specific event occurs.                         | Executes a task when explicitly invoked.                                       |
| **Define/Call**         | Cannot call other triggers, only nested triggers are allowed.                | Can call other procedures or be nested inside other procedures.               |
| **Syntax**              | `CREATE TRIGGER TRIGGER_NAME`                                                | `CREATE PROCEDURE PROCEDURE_NAME`                                             |
| **Transaction Support** | No support for `COMMIT`, `ROLLBACK`, or `SAVEPOINT` in triggers.             | Supports `COMMIT`, `ROLLBACK`, and `SAVEPOINT` for transaction control.      |
| **Usage**               | Primarily used for enforcing data integrity and logging changes automatically. | Used for executing custom tasks, like calculations or data processing.         |
| **Return Value**        | Does not return values or accept parameters.                                 | Can return values and accept parameters.                                      |


### **Example Use Cases**

#### **Trigger Example:**
Automatically update a `last_updated` timestamp column on a table whenever a record is modified.
```sql
CREATE TRIGGER update_timestamp
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    SET NEW.last_updated = NOW();
END;
```

#### **Procedure Example:**
Generate a report of employees with a salary greater than a specified value.
```sql
DELIMITER //

CREATE PROCEDURE HighSalaryReport(IN min_salary DECIMAL(10, 2))
BEGIN
    SELECT * FROM employees
    WHERE salary > min_salary;
END //

DELIMITER ;
```

---

### **Key Takeaway**:
- **Triggers** are event-driven, automatic, and tightly coupled to table events.
- **Procedures** are reusable, explicitly called, and suitable for broader business logic or workflows.
====================================================================================

keys 



### **1. Primary Key**
- **Definition**: A column or combination of columns that uniquely identifies each row in a table. It cannot have `NULL` values.
- **Real-Time Example**:  
  In an **employee database**, the `employee_id` serves as a **primary key** because each employee has a unique ID.

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    hire_date DATE
);
```
- **Use Case**: Ensures no duplicate employee records exist.

---

### **2. Foreign Key**
- **Definition**: A column that establishes a relationship between two tables by referring to the primary key in another table.
- **Real-Time Example**:  
  In an **order management system**, the `customer_id` in the `orders` table is a foreign key referencing the `customers` table.

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```
- **Use Case**: Links orders to customers, ensuring data integrity across related tables.

---

### **3. Unique Key**
- **Definition**: Ensures all values in a column are unique. Unlike the primary key, it allows one `NULL` value.
- **Real-Time Example**:  
  In a **university database**, the `email` field in the `students` table can be unique for each student.

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);
```
- **Use Case**: Prevents duplicate email addresses while allowing a student to register without one (`NULL`).

---

### **4. Composite Key**
- **Definition**: A combination of two or more columns used to uniquely identify a row in a table.
- **Real-Time Example**:  
  In a **class schedule**, `class_id` and `day_of_week` together form a unique identifier for a specific class session.

```sql
CREATE TABLE class_schedule (
    class_id INT,
    day_of_week VARCHAR(10),
    start_time TIME,
    end_time TIME,
    PRIMARY KEY (class_id, day_of_week)
);
```
- **Use Case**: Prevents duplicate class schedules on the same day.

---

### **Candidate Key - Simple Example**

#### Table: `Books`

| **Book_ID** | **ISBN**          | **Title**           |
|-------------|-------------------|---------------------|
| 1           | 978-3-16-148410-0 | SQL for Beginners   |
| 2           | 978-1-4028-9462-6 | Mastering Python    |
| 3           | 978-0-596-52068-7 | Data Structures 101 |

---

#### **Candidate Keys**:
1. **Book_ID**: Each book has a unique ID.
2. **ISBN**: Each book has a unique ISBN.

Both `Book_ID` and `ISBN` can **uniquely identify** each book in the table, so they are **Candidate Keys**.

---

#### **Selecting a Primary Key**:
- If we choose `Book_ID` as the **Primary Key**, `ISBN` becomes an **Alternate Key**.

---

#### SQL Example:

```sql
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,   -- Chosen Candidate Key
    ISBN VARCHAR(20) UNIQUE,  -- Alternate Key
    Title VARCHAR(100)
);
```

---
### **7. Super Key**
- **Definition**: A set of one or more columns that can uniquely identify a record. A primary key is a minimal super key.
- **Real-Time Example**:  
  In an **e-commerce database**, a combination of `order_id` and `customer_id` forms a super key, though `order_id` alone is sufficient.

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT
);
```z
- **Use Case**: Helps identify all possible keys that can uniquely identify records.

### Summary of Real-Time Examples

| **Key**           | **Real-Life Use Case**                                              |
|-------------------|--------------------------------------------------------------------|
| **Primary Key**   | `employee_id` in an employee database ensures each employee is unique. |
| **Foreign Key**   | `customer_id` in the orders table links to the customers table.       |
| **Unique Key**    | A `email` field ensuring no duplicate email addresses for users.      |
| **Composite Key** | `class_id` and `day_of_week` for scheduling classes uniquely.         |
| **Candidate Key** | Both `book_id` and `ISBN` uniquely identify a book.                  |
| **Super Key**     | Combination of `order_id` and `customer_id` as an identifier.         |  |



====================================================================================
indexes

### **Indexes in SQL**

An **index** in SQL is a data structure that improves the speed of data retrieval operations on a database table. It works like a book index, helping to locate specific data efficiently without scanning the entire table.

---

### **Key Features of Indexes**
1. **Improves Performance**: Speeds up SELECT queries.
2. **Consumes Space**: Requires storage space for the index itself.
3. **Trade-off**: While it speeds up reads, it can slightly slow down INSERT, UPDATE, and DELETE operations due to the need to update the index.

---

### **Real-Time Example**

#### Scenario:
Imagine a **library database** with a `Books` table containing millions of records.

| **Book_ID** | **ISBN**          | **Title**            | **Author**         | **Published_Year** |
|-------------|-------------------|----------------------|--------------------|--------------------|
| 1           | 978-3-16-148410-0 | SQL for Beginners    | John Smith         | 2020               |
| 2           | 978-1-4028-9462-6 | Mastering Python     | Alice Johnson      | 2018               |
| 3           | 978-0-596-52068-7 | Data Structures 101  | Charlie Brown      | 2015               |

#### Problem Without Index:
If you run a query like this:
```sql
SELECT * FROM Books WHERE Title = 'SQL for Beginners';
```

- The database must scan **every row** in the `Books` table to find the match, which is time-consuming for large datasets.

---

### **Solution: Adding an Index**

An index on the `Title` column allows the database to **quickly locate rows** without scanning the entire table.

#### Creating an Index:
```sql
CREATE INDEX idx_title ON Books (Title);
```

#### Query After Adding the Index:
```sql
SELECT * FROM Books WHERE Title = 'SQL for Beginners';
```
- The database uses the `idx_title` index to directly locate the matching row(s), significantly reducing search time.

---

### **Types of Indexes with Examples**

1. **Single-Column Index**:
   - Index on a single column.
   - Example:
     ```sql
     CREATE INDEX idx_author ON Books (Author);
     ```

==
### How Indexes Work Internally

When you create an index on a column (e.g., `Title`), the database builds a **data structure** (usually a **B-Tree** or **Hash Table**) to store the indexed column values in an organized way. This makes data retrieval faster by minimizing the number of rows scanned.

---

### **Steps in Index Creation and Usage**

#### 1. **Index Creation**
   - When you execute:
     ```sql
     CREATE INDEX idx_title ON Books (Title);
     ```
     The database performs the following:
     - **Extracts Column Values**: It extracts the values of the `Title` column from all rows in the `Books` table.
     - **Sorts and Organizes**: It sorts and organizes these values into a **B-Tree** or another structure (depending on the database system).
     - **Stores Pointers**: Along with the column values, it stores **pointers** (references) to the rows in the table where the values exist.

   Example B-Tree for `idx_title`:
   ```
         SQL for Beginners
              /       \
    Data Structures 101 Mastering Python
   ```
   Each leaf node of the tree contains a pointer to the corresponding row in the `Books` table.

---

#### 2. **Query Execution Using the Index**
   When you run the query:
   ```sql
   SELECT * FROM Books WHERE Title = 'SQL for Beginners';
   ```
   Here's how it works:
   - **Searches the Index**: Instead of scanning the entire `Books` table, the database traverses the index (e.g., B-Tree) to quickly locate the `Title` value.
   - **Finds the Pointer**: The index points to the specific row(s) in the table that match the search value.
   - **Fetches the Row**: The database fetches the full row data using the pointer.

   Without the index, the database would need to scan **every row** in the table to find matches.
====================================================================================
constrains
### **Constraints in SQL with Real-Time Examples**

Constraints ensure data integrity and maintain logical relationships between table data.
 Below are SQL constraints with practical, real-world examples.

---

### **1. NOT NULL Constraint**
- **Use Case**: Ensuring that essential information like customer names or email addresses cannot be left blank.

#### Example:
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    Email VARCHAR(100)
);
```
**Explanation**: 
- `CustomerName` must always be provided when adding a customer.  
- Useful in real-world systems where missing critical details can cause processing issues.

---

### **2. UNIQUE Constraint**
- **Use Case**: Ensuring unique entries, such as email addresses or usernames, to avoid duplication.

#### Example:
```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE,
    Email VARCHAR(100) UNIQUE
);
```
**Explanation**: 
- Ensures that no two users can have the same `Username` or `Email`.  
- Common in user registration systems.

---

### **3. PRIMARY KEY Constraint**
- **Use Case**: Uniquely identifying each record in a table.

#### Example:
```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    CustomerID INT
);
```
**Explanation**: 
- `OrderID` is unique for every order, ensuring each entry in the `Orders` table can be referenced or updated without ambiguity.  
- Essential for tracking individual transactions.

---

### **4. FOREIGN KEY Constraint**
- **Use Case**: Establishing a relationship between two tables, like linking orders to customers.

#### Example:
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
```
**Explanation**: 
- `CustomerID` in the `Orders` table references the `CustomerID` in the `Customers` table.  
- Ensures that no order can exist for a non-existent customer.

---

### **5. CHECK Constraint**
- **Use Case**: Restricting the range or type of data to ensure logical correctness.

#### Example:
```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);
```
**Explanation**: 
- Ensures that `Price` is always greater than zero.  
- Useful in e-commerce systems to prevent products with invalid prices.

---

### **6. DEFAULT Constraint**
- **Use Case**: Providing default values for fields when no value is supplied.

#### Example:
```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE DEFAULT GETDATE(),
    Status VARCHAR(20) DEFAULT 'Pending'
);
```
**Explanation**: 
- If no `OrderDate` is specified, it defaults to the current date.  
- `Status` defaults to `'Pending'`, which is helpful in order management systems.

====================================================================================
### **7. Real-Time Combined Use Case**

#### Scenario:
You are designing a library management system where:
- Each book must have a unique `BookID`.
- The `Title` of the book cannot be null.
- Each book must belong to a valid `Category`.
- The `Price` of a book must be greater than zero.

#### SQL Code:
```sql
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
```
**Explanation**:
- Ensures data integrity across `Books` and `Categories`.
- Prevents adding books with invalid categories or prices.

---

### **Why Constraints Are Important**
- **NOT NULL**: Ensures critical fields are filled.
- **UNIQUE**: Prevents duplicate records.
- **PRIMARY KEY**: Ensures each record can be uniquely identified.
- **FOREIGN KEY**: Maintains relationships across tables.
- **CHECK**: Validates data.
- **DEFAULT**: Adds consistent default values.

====
join 

### **SQL Joins with Examples**
In SQL, **joins** are used to combine data from two or more tables based on a related column.
### **Types of Joins**

1. **INNER JOIN**
2. **LEFT JOIN**
3. **RIGHT JOIN**
4. **FULL OUTER JOIN**
5. **CROSS JOIN**
6. **SELF JOIN**

---

### **1. INNER JOIN**
- Combines rows from both tables where there is a match in the columns specified.

#### Example:
Two tables:  
**Employees**  
| EmployeeID | Name       | DepartmentID |
|------------|------------|--------------|
| 1          | Alice      | 101          |
| 2          | Bob        | 102          |
| 3          | Charlie    | NULL         |

**Departments**  
| DepartmentID | DepartmentName |
|--------------|----------------|
| 101          | HR             |
| 102          | IT             |

**Query**:
```sql
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

**Result**:  
| Name   | DepartmentName |
|--------|----------------|
| Alice  | HR             |
| Bob    | IT             |

**Explanation**: 
- Only rows with matching `DepartmentID` in both tables are included.

---

### **2. LEFT JOIN (or LEFT OUTER JOIN)**
- Returns all rows from the left table and the matched rows from the right table. If no match, returns `NULL` for right table columns.

#### Example:
**Query**:
```sql
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

**Result**:  
| Name    | DepartmentName |
|---------|----------------|
| Alice   | HR             |
| Bob     | IT             |
| Charlie | NULL           |

**Explanation**: 
- All employees are included, even if they are not assigned to a department.

---

### **3. RIGHT JOIN (or RIGHT OUTER JOIN)**
- Returns all rows from the right table and the matched rows from the left table. If no match, returns `NULL` for left table columns.

#### Example:
**Query**:
```sql
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

**Result**:  
| Name   | DepartmentName |
|--------|----------------|
| Alice  | HR             |
| Bob    | IT             |

**Explanation**: 
- All departments are included, even if no employee is assigned.

---

### **4. FULL OUTER JOIN**
- Returns all rows when there is a match in either table. Unmatched rows will show `NULL`.

#### Example:
**Query**:
```sql
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
FULL OUTER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

**Result**:  
| Name    | DepartmentName |
|---------|----------------|
| Alice   | HR             |
| Bob     | IT             |
| Charlie | NULL           |

**Explanation**: 
- Includes all employees and departments, even if there is no match.

---

### **5. CROSS JOIN**
- Returns the Cartesian product of two tables, i.e., every row from one table is combined with every row from the other table.

#### Example:
**Query**:
```sql
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;
```

**Result**:  
| Name    | DepartmentName |
|---------|----------------|
| Alice   | HR             |
| Alice   | IT             |
| Bob     | HR             |
| Bob     | IT             |
| Charlie | HR             |
| Charlie | IT             |

**Explanation**: 
- Every employee is paired with every department.

---

### **6. SELF JOIN**
- A table is joined with itself. Useful for hierarchical or comparative data.

#### Example:
**Employees Table**  
| EmployeeID | Name       | ManagerID |
|------------|------------|-----------|
| 1          | Alice      | NULL      |
| 2          | Bob        | 1         |
| 3          | Charlie    | 1         |

**Query**:
```sql
SELECT A.Name AS Employee, B.Name AS Manager
FROM Employees A
LEFT JOIN Employees B
ON A.ManagerID = B.EmployeeID;
```

**Result**:  
| Employee | Manager |
|----------|---------|
| Alice    | NULL    |
| Bob      | Alice   |
| Charlie  | Alice   |

**Explanation**: 
- Shows the relationship between employees and their managers.
====================================================================================
### **Real-World Use Cases**
1. **INNER JOIN**: Fetching all orders with customer details in an e-commerce application.
2. **LEFT JOIN**: Finding employees who have not been assigned to a department.
3. **RIGHT JOIN**: Listing all departments, even if they have no employees.
4. **FULL OUTER JOIN**: Merging two datasets to analyze unmatched records.
5. **CROSS JOIN**: Creating combinations like sizes and colors for a product catalog.
6. **SELF JOIN**: Identifying employees who report to the same manager.

=====

### **Self Join in SQL: A Detailed Explanation**

A **Self Join** is a type of join where a table is joined with itself. It is particularly useful when you want to find relationships within the same table, such as hierarchical data (e.g., employees and their managers), comparisons, or duplicates.

### **Use Cases in Real Life**
1. **Employee-Manager Relationships**: Find hierarchical structures in an organization.
2. **Finding Collaborators**: Identify employees working under the same supervisor.
3. **Detecting Duplicates**: Spot identical records in a dataset.
4. **Comparative Analysis**: Compare rows within the same table for ranking or pairing.

=====================================================================================
A **self join** is necessary when you need to compare rows within the same table or when rows in the table reference other rows in the same table (e.g., hierarchical or recursive relationships). Here are scenarios where a **self join** becomes the best solution:

---

### **Scenarios Where Self Join is Necessary**

1. **Hierarchical Relationships**
   - Example: **Employee-Manager relationships** in the same table.
   - Use a self join when you need to fetch both employee and manager details from a single `Employees` table.

   **Table: Employees**
   | EmployeeID | Name    | ManagerID |
   |------------|---------|-----------|
   | 1          | Alice   | NULL      |
   | 2          | Bob     | 1         |
   | 3          | Charlie | 1         |
   | 4          | David   | 2         |
   | 5          | Eve     | 2         |

   **Query**:
   ```sql
   SELECT 
       E1.Name AS Employee,
       E2.Name AS Manager
   FROM 
       Employees E1
   LEFT JOIN 
       Employees E2
   ON 
       E1.ManagerID = E2.EmployeeID;
   ```

   **Result**:
   | Employee | Manager     |
   |----------|-------------|
   | Alice    | NULL        |
   | Bob      | Alice       |
   | Charlie  | Alice       |
   | David    | Bob         |
   | Eve      | Bob         |

   **Why Self Join?**
   - You're comparing rows in the table to other rows in the same table (`E1.ManagerID = E2.EmployeeID`).

---

=====================================================================================
datatype 

### **1. Numeric Types**
- **`INT`**: Stores whole numbers.  
  *Example*: `100, -25`
- **`DECIMAL`**: Exact numbers with decimals.  
  *Example*: `123.45`
- **`FLOAT`**: Approximate decimal values.  
  *Example*: `3.14`

---

### **2. Character Types**
- **`VARCHAR(n)`**: Variable-length text.  
  *Example*: `"Hello"`
- **`CHAR(n)`**: Fixed-length text.  
  *Example*: `CHAR(5)` stores `"SQL  "`  
- **`TEXT`**: Large text for articles or descriptions.  
  *Example*: `"Long description..."`

---

### **3. Date & Time Types**
- **`DATE`**: Stores date (`YYYY-MM-DD`).  
  *Example*: `2024-11-19`
- **`DATETIME`**: Stores date and time (`YYYY-MM-DD HH:MM:SS`).  
  *Example*: `2024-11-19 14:30:00`

---

### **4. Boolean Type**
- **`BOOLEAN`**: Stores `TRUE` or `FALSE`.  
  *Example*: `TRUE`

---

### **5. Binary & Special Types**
- **`BLOB`**: Stores binary data (e.g., images, files).  
- **`ENUM`**: Predefined values.  
  *Example*: `ENUM('Small', 'Medium', 'Large')`

---

### **Example Table**
```sql
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(255),
    DOB DATE,
    IsActive BOOLEAN
);
``` 
- **CustomerID**: Integer for unique IDs.  
- **Name**: Text for names.  
- **DOB**: Date of birth.  
- **IsActive**: Tracks if the customer is active

cause is sql

=====================================================================================
The `GROUP BY` clause in SQL is used to group rows that have the same values in specified columns into summary rows, often with the use of aggregate functions like `SUM`, `COUNT`, `AVG`, `MAX`, or `MIN`. It's especially useful for generating reports and summarizing data.

---

### 1. **How `GROUP BY` Works**
- It divides the data into groups based on one or more columns.
- For each group, aggregate functions calculate summary statistics.

---

### 2. **Syntax**
```sql
SELECT column1, aggregate_function(column2)
FROM table_name
WHERE condition
GROUP BY column1;
```

---

### 3. **Example 1: Basic `GROUP BY`**
#### Data: `sales` table
| salesperson | region  | total_sales |
|-------------|---------|-------------|
| Alice       | North   | 200         |
| Bob         | South   | 150         |
| Alice       | North   | 300         |
| Bob         | South   | 250         |

#### Query: Total sales by salesperson
```sql
SELECT salesperson, SUM(total_sales) AS total_sales
FROM sales
GROUP BY salesperson;
```

#### Result:
| salesperson | total_sales |
|-------------|-------------|
| Alice       | 500         |
| Bob         | 400         |

---

### 4. **`GROUP BY` with Multiple Columns**
#### Query: Total sales by `salesperson` and `region`
```sql
SELECT salesperson, region, SUM(total_sales) AS total_sales
FROM sales
GROUP BY salesperson, region;
```

#### Result:
| salesperson | region | total_sales |
|-------------|--------|-------------|
| Alice       | North  | 500         |
| Bob         | South  | 400         |

**Explanation**:
- Rows are grouped by a combination of `salesperson` and `region`.
- The `SUM` function calculates totals for each group.

---

### 5. **Using `HAVING` with `GROUP BY`**
The `HAVING` clause filters groups after the aggregation (unlike `WHERE`, which filters rows before grouping).

#### Query: Only show groups where total sales > 400
```sql
SELECT salesperson, SUM(total_sales) AS total_sales
FROM sales
GROUP BY salesperson
HAVING SUM(total_sales) > 400;
```

#### Result:
| salesperson | total_sales |
|-------------|-------------|
| Alice       | 500         |

**Explanation**:
- After grouping and summing, the `HAVING` clause filters groups where the total sales exceed 400.

=====================================================================================

### 6. **`GROUP BY` with Other Aggregate Functions**
- **Count number of sales per region**:
  ```sql
  SELECT region, COUNT(*) AS sales_count
  FROM sales
  GROUP BY region;
  ```

- **Find the maximum sale in each region**:
  ```sql
  SELECT region, MAX(total_sales) AS max_sale
  FROM sales
  GROUP BY region;
  ```

---

### 7. **Best Practices**
- Columns in the `SELECT` clause should either:
  - Appear in the `GROUP BY` clause, or
  - Be used with an aggregate function.
  
#### Query That Will Cause an Error:
```sql
SELECT salesperson, region, SUM(total_sales)
FROM sales
GROUP BY salesperson;  -- `region` is not in `GROUP BY` or aggregated
```

---

### 8. **Visualization**
Imagine `GROUP BY` as sorting rows into "buckets" based on shared values in the grouping columns, and then applying calculations to each bucket.


-----
The `HAVING` clause in SQL is used to filter groups of data after they have been grouped using the `GROUP BY` clause. It is similar to the `WHERE` clause, but **`HAVING` works on aggregated data**, while `WHERE` works on individual rows.

---

### 1. **Purpose of `HAVING`**
- Filters the results of grouped data.
- Typically used with aggregate functions (`SUM`, `COUNT`, `AVG`, `MIN`, `MAX`).

---

### 2. **Syntax**
```sql
SELECT column1, aggregate_function(column2)
FROM table_name
WHERE condition
GROUP BY column1
HAVING aggregate_function(column2) condition;
```

---

### 3. **Difference Between `WHERE` and `HAVING`**

| Clause  | Filters Before/After Grouping? | Works on Aggregates? | Example Use Case                          |
|---------|---------------------------------|-----------------------|-------------------------------------------|
| `WHERE` | Filters rows before grouping    | No                    | `WHERE price > 100` (Filter raw data)     |
| `HAVING`| Filters groups after grouping   | Yes                   | `HAVING AVG(price) > 100` (Filter averages)|

---

### 4. **Example: Sales Data**
#### Data: `sales` table
| salesperson | region  | total_sales |
|-------------|---------|-------------|
| Alice       | North   | 200         |
| Bob         | South   | 150         |
| Alice       | North   | 300         |
| Bob         | South   | 250         |

#### Query: Show only groups where total sales > 400
```sql
SELECT salesperson, SUM(total_sales) AS total_sales
FROM sales
GROUP BY salesperson
HAVING SUM(total_sales) > 400;
```

#### Result:
| salesperson | total_sales |
|-------------|-------------|
| Alice       | 500         |

**Explanation**:
- The data is grouped by `salesperson`.
- `SUM(total_sales)` is calculated for each group.
- The `HAVING` clause filters out groups where the total sales are ≤ 400.

---

### 5. **`HAVING` Without `GROUP BY`**
If no `GROUP BY` is used, `HAVING` applies to the entire result set as a single group.

#### Example: Total sales > 800
```sql
SELECT SUM(total_sales) AS total_sales
FROM sales
HAVING SUM(total_sales) > 800;
```

#### Result:
| total_sales |
|-------------|
| 900         |

---

### 6. **`HAVING` with Multiple Conditions**
You can use logical operators (`AND`, `OR`) in `HAVING`.

#### Query: Groups with total sales > 400 AND maximum sale > 250
```sql
SELECT salesperson, SUM(total_sales) AS total_sales, MAX(total_sales) AS max_sale
FROM sales
GROUP BY salesperson
HAVING SUM(total_sales) > 400 AND MAX(total_sales) > 250;
```

#### Result:
| salesperson | total_sales | max_sale |
|-------------|-------------|----------|
| Alice       | 500         | 300      |

---

### 7. **Best Practices**
- Use `HAVING` only when filtering aggregated data.
- For conditions on raw data (e.g., filtering rows), use `WHERE`.

#### Incorrect Query:
```sql
SELECT salesperson, SUM(total_sales)
FROM sales
GROUP BY salesperson
HAVING region = 'North';  -- ERROR: `region` is not aggregated or grouped
```

#### Correct Query:
```sql
SELECT salesperson, SUM(total_sales)
FROM sales
WHERE region = 'North'  -- Use WHERE for filtering rows
GROUP BY salesperson
HAVING SUM(total_sales) > 300;  -- Use HAVING for filtering groups
```

### 8. **Common Use Cases**
1. **Top Performers**:
   - Salespeople with total sales exceeding a target.
   ```sql
   SELECT salesperson, SUM(total_sales)
   FROM sales
   GROUP BY salesperson
   HAVING SUM(total_sales) > 500;
   ```

2. **Average Filter**:
   - Groups where the average sales exceed a value.
   ```sql
   SELECT region, AVG(total_sales)
   FROM sales
   GROUP BY region
   HAVING AVG(total_sales) > 200;
   ```

3. **Minimum and Maximum Analysis**:
   - Regions where the maximum sales exceed a threshold.
   ```sql
   SELECT region, MAX(total_sales)
   FROM sales
   GROUP BY region
   HAVING MAX(total_sales) > 300;
   ```
can we  use having cause without using group by 
Yes, **you can use the `HAVING` clause without `GROUP BY`** in SQL, but in such cases, the entire result set is treated as a single group. This means that `HAVING` will evaluate aggregate functions applied to the entire dataset.

---
=====================================================================================
--view 
A **view** in a database is a virtual table created from a `SELECT` query. It doesn’t store data itself but provides a simplified way to access data from one or more tables. Views are useful for security, abstraction, and simplifying complex queries.

---

### **Syntax**
```sql
CREATE VIEW view_name AS
SELECT columns
FROM table_name
WHERE condition;
```

---

### **Example**
#### **Original Table: Employees**
| EmployeeID | Name   | Department | Salary |
|------------|--------|------------|--------|
| 1          | Alice  | HR         | 50000  |
| 2          | Bob    | IT         | 60000  |
| 3          | Charlie| IT         | 70000  |

#### **Create View**
```sql
CREATE VIEW IT_Employees AS
SELECT Name, Salary
FROM Employees
WHERE Department = 'IT';
```

#### **Query the View**
```sql
SELECT * FROM IT_Employees;
```

**Result:**
| Name    | Salary |
|---------|--------|
| Bob     | 60000  |
| Charlie | 70000  |

cons :

we cannot manuiplate data 
perfomace could be slow down when we apply complez aggregtaions operations  

---
Checklist : 
qu : https://github.com/sejalyadav0818/SQL-practice
https://www.geeksforgeeks.org/commonly-ask	ed-dbms-interview-questions/
https://www.geeksforgeeks.org/commonly-asked-dbms-interview-questions-set-2/?ref=asr1
https://www.javatpoint.com/dbms-interview-questions
https://www.simplilearn.com/dbms-interview-questions-and-answers-article


Some Prcatical query topic : 

### **1. Basics of SQL**
- SELECT, INSERT, UPDATE, DELETE: Basic CRUD operations.
                                        1. **Create a table** (just for reference):
                                        ```sql
                                        CREATE TABLE Employees (
                                          EmployeeID INT PRIMARY KEY,
                                          EmployeeName VARCHAR(100),
                                          Salary DECIMAL(10, 2),
                                          Department VARCHAR(50)
                                        );
                                        ```

                                        2. **INSERT**:
                                        ```sql
                                        INSERT INTO Employees (EmployeeID, EmployeeName, Salary, Department)
                                        VALUES (1, 'Alice', 60000, 'IT');
                                        ```

                                        3. **SELECT**:
                                        ```sql
                                        SELECT * FROM Employees;
                                        ```

                                        4. **UPDATE**:
                                        ```sql
                                        UPDATE Employees
                                        SET Salary = 65000
                                        WHERE EmployeeID = 1;
                                        ```

                                        5. **DELETE**:
                                        ```sql
                                        DELETE FROM Employees
                                        WHERE EmployeeID = 1;
                                        ```

                                        ---
- Filtering data with **WHERE** clause.
                            ### **1. Basic Syntax of `WHERE` clause**

                            The basic syntax for using the `WHERE` clause is:

                            ```sql
                            SELECT column1, column2, ...
                            FROM table_name
                            WHERE condition;
                            ```

                            - **`condition`**: This is the criteria used to filter the rows. It can be any logical expression or condition (e.g., comparisons, LIKE, IS NULL, etc.).

                            ---

                            ### **2. Basic Conditions**

                            Here are a few examples of how you can use the `WHERE` clause with different conditions.

                            #### **Equality condition**: Using `=`
                            This checks if the column value is equal to a specific value.

                            ```sql
                            SELECT * FROM Employees
                            WHERE Department = 'HR';
                            ```
                            This will return all employees whose department is 'HR'.

                            #### **Inequality condition**: Using `<>` or `!=`
                            This checks if the column value is not equal to a specific value.

                            ```sql
                            SELECT * FROM Employees
                            WHERE Department <> 'HR';
                            ```
                            This will return all employees whose department is **not** 'HR'.

                            #### **Range condition**: Using `BETWEEN ... AND`
                            This checks if a column value lies within a certain range.

                            ```sql
                            SELECT * FROM Employees
                            WHERE Salary BETWEEN 50000 AND 70000;
                            ```
                            This will return employees whose salary is between 50,000 and 70,000 (inclusive).

                            #### **Set condition**: Using `IN`
                            This checks if a column value matches any value in a list.

                            ```sql
                            SELECT * FROM Employees
                            WHERE Department IN ('HR', 'Finance');
                            ```
                            This will return employees who are in either 'HR' or 'Finance' department.

                            ---

                            ### **3. Comparison Operators**

                            Here are other common comparison operators that can be used with the `WHERE` clause:

                            - **Greater than**: `>`
                            - **Less than**: `<`
                            - **Greater than or equal to**: `>=`
                            - **Less than or equal to**: `<=`
                            - **Not equal**: `<>` or `!=`
                            - **Equal**: `=`

                            #### **Example**: Find employees whose salary is greater than 50,000.

                            ```sql
                            SELECT * FROM Employees
                            WHERE Salary > 50000;
                            ```

                            ---

                            ### **4. Using Logical Operators**

                            You can combine multiple conditions using **AND**, **OR**, and **NOT**.

                            #### **AND**: Combines conditions where both must be true.
                            ```sql
                            SELECT * FROM Employees
                            WHERE Department = 'IT' AND Salary > 60000;
                            ```
                            This will return employees in the 'IT' department whose salary is greater than 60,000.

                            #### **OR**: Combines conditions where at least one condition must be true.
                            ```sql
                            SELECT * FROM Employees
                            WHERE Department = 'HR' OR Department = 'Finance';
                            ```
                            This will return employees who are either in the 'HR' or 'Finance' departments.

                            #### **NOT**: Excludes records where the condition is true.
                            ```sql
                            SELECT * FROM Employees
                            WHERE NOT Department = 'HR';
                            ```
                            This will return all employees **except** those in the 'HR' department.

                            ---

                            ### **5. Using `LIKE` for Pattern Matching**

                            The `LIKE` operator is used for pattern matching in strings. You can use wildcards such as `%` (zero or more characters) and `_` (exactly one character).

                            #### **Example**: Find employees whose name starts with "J".
                            ```sql
                            SELECT * FROM Employees
                            WHERE EmployeeName LIKE 'J%';
                            ```

                            #### **Example**: Find employees whose name ends with "son".
                            ```sql
                            SELECT * FROM Employees
                            WHERE EmployeeName LIKE '%son';
                            ```

                            #### **Example**: Find employees whose name contains "An".
                            ```sql
                            SELECT * FROM Employees
                            WHERE EmployeeName LIKE '%An%';
                            ```

                            ---

                            ### **6. Using `IS NULL` and `IS NOT NULL`**

                            The `IS NULL` condition is used to check for **NULL** values in columns.

                            ```sql
                            SELECT * FROM Employees
                            WHERE Salary IS NULL;
                            ```
                            This will return employees where the salary is **not specified** (i.e., NULL).

                            If you want to find records where a column is **not NULL**, you can use `IS NOT NULL`:

                            ```sql
                            SELECT * FROM Employees
                            WHERE Salary IS NOT NULL;
                            ```

                            ---

                            ### **7. Combining Conditions**

                            You can combine multiple conditions in the `WHERE` clause using **AND**, **OR**, and **NOT** to filter data more precisely.

                            #### **Example**: Find employees who are in the 'HR' or 'Finance' departments and earn more than 50,000.
                            ```sql
                            SELECT * FROM Employees
                            WHERE (Department = 'HR' OR Department = 'Finance')
                            AND Salary > 50000;
                            ```

                            ---

                            ### **Examples in Practice:**

                            #### **Example 1**: Get all employees in the 'Sales' department with a salary greater than 30,000.
                            ```sql
                            SELECT * FROM Employees
                            WHERE Department = 'Sales' AND Salary > 30000;
                            ```

                            #### **Example 2**: Find employees who have 'Manager' in their job title.
                            ```sql
                            SELECT * FROM Employees
                            WHERE JobTitle LIKE '%Manager%';
                            ```

                            #### **Example 3**: Find employees whose salary is not within the range 40,000 to 60,000.
                            ```sql
                            SELECT * FROM Employees
                            WHERE Salary NOT BETWEEN 40000 AND 60000;
                            ```

                            ---
- Sorting results using **ORDER BY**.
                              ### **Sorting Data with `ORDER BY`**

                              The `ORDER BY` clause is used to sort the results of a SQL query in either **ascending** or **descending** order.

                              - **Ascending** (`ASC`) is the default order and sorts from the smallest value to the largest (e.g., 1 to 100, A to Z).
                              - **Descending** (`DESC`) sorts from the largest value to the smallest (e.g., 100 to 1, Z to A).

                              ---

                              ### **Basic Syntax** of `ORDER BY`:

                              ```sql
                              SELECT column1, column2, ...
                              FROM table_name
                              ORDER BY column_name [ASC | DESC];
                              ```

                              - **`column_name`**: The column by which the results will be sorted.
                              - **`ASC`** (ascending): Optional, but the default behavior for sorting in increasing order.
                              - **`DESC`** (descending): Optional, for sorting in decreasing order.

                              ---

                          ### **Examples of Sorting Data**

                          #### **1. Sorting in Ascending Order (Default)**

                          Let's say we have an `Employees` table with `EmployeeID`, `EmployeeName`, and `Salary` columns. If you want to sort the employees by their salary in ascending order (from the lowest salary to the highest), you can use:

                          ```sql
                          SELECT EmployeeID, EmployeeName, Salary
                          FROM Employees
                          ORDER BY Salary ASC;
                          ```

                          This will return the employees' list with the lowest salary at the top.

                          ---

                          #### **2. Sorting in Descending Order**

                          To sort the same list of employees by salary but in descending order (highest salary at the top), you would use:

                          ```sql
                          SELECT EmployeeID, EmployeeName, Salary
                          FROM Employees
                          ORDER BY Salary DESC;
                          ```

                          This will return the list of employees sorted with the highest salary first.

                          ---

                          ### **3. Sorting by Multiple Columns**

                          You can also sort data by more than one column. If you want to first sort employees by their **department**, and then by **salary** within each department, you can do:

                          ```sql
                          SELECT EmployeeID, EmployeeName, Department, Salary
                          FROM Employees
                          ORDER BY Department ASC, Salary DESC;
                          ```

                          - First, employees will be sorted by **Department** in ascending order (alphabetically).
                          - Then, within each department, employees will be sorted by **Salary** in descending order (highest to lowest).

                          ---

                          ### **4. Sorting by Alphabetical Order**

                          If you want to sort employee names in **alphabetical order**, you can use:

                          ```sql
                          SELECT EmployeeID, EmployeeName, Department
                          FROM Employees
                          ORDER BY EmployeeName ASC;
                          ```

                          This will sort the employees alphabetically by their **EmployeeName**.

                          ---

                          ### **5. Sorting with `NULL` Values**

                          In SQL, `NULL` values are sorted at the beginning of the result when using **ascending order** (`ASC`), and at the end when using **descending order** (`DESC`).

                          #### **Example**: Sorting employees by salary, with employees having `NULL` salary values appearing at the end:

                          ```sql
                          SELECT EmployeeID, EmployeeName, Salary
                          FROM Employees
                          ORDER BY Salary DESC;
                          ```

                          If some employees have a `NULL` salary, those will appear at the bottom when sorted in descending order.

                          ---

                          ### **6. Sorting with `LIMIT`**

                          You can combine `ORDER BY` with `LIMIT` to fetch a specific number of rows after sorting. For example, if you want to get the top 5 highest-paid employees, you can do:

                          ```sql
                          SELECT EmployeeID, EmployeeName, Salary
                          FROM Employees
                          ORDER BY Salary DESC
                          LIMIT 5;
                          ```

                          This will return the top 5 highest-paid employees sorted by salary in descending order.

                          ---

                          ### **Examples of Sorting Data**

                          #### **Example 1**: Sort employees by their name in alphabetical order.
                          ```sql
                          SELECT EmployeeName, Salary
                          FROM Employees
                          ORDER BY EmployeeName;
                          ```

                          #### **Example 2**: Sort employees by salary, from the highest to lowest.
                          ```sql
                          SELECT EmployeeName, Salary
                          FROM Employees
                          ORDER BY Salary DESC;
                          ```

                          #### **Example 3**: Sort employees first by department (alphabetical order), then by salary (from highest to lowest).
                          ```sql
                          SELECT EmployeeName, Department, Salary
                          FROM Employees
                          ORDER BY Department, Salary DESC;
                          ```

                          ---

                          ### **Summary**

                          - **`ORDER BY`** is used to sort query results.
                          - You can sort data in **ascending** (`ASC`) or **descending** (`DESC`) order.
                          - Multiple columns can be sorted together.
                          - The sorting of `NULL` values depends on whether you're using `ASC` or `DESC`.
                          - You can limit the number of results returned using `LIMIT` in combination with `ORDER BY`.
- Understanding **DISTINCT** to remove duplicates.

---

### **2. Aggregate Functions**
   - **COUNT, SUM, AVG, MIN, MAX**: Used for calculations on columns.
   - Grouping data with **GROUP BY**.
   - Filtering groups using **HAVING**.

---

### **3. Subqueries**
   - Basic subqueries in **WHERE** clause.
   - Using subqueries to return single or multiple rows.
   - **Correlated subqueries** (more advanced, but very useful).

---

### **4. Joins**
   - **INNER JOIN**: Combine rows that match in both tables.
   - **LEFT JOIN**: Include unmatched rows from the left table.
   - **RIGHT JOIN**: Include unmatched rows from the right table.
   - **FULL OUTER JOIN**: Include all unmatched rows from both tables.
   - **SELF JOIN**: Join a table to itself.

---

### **5. Window Functions**
   - **ROW_NUMBER()**, **RANK()**, **DENSE_RANK()** for ranking rows.
   - **PARTITION BY** to divide rows into groups.
   - Moving aggregates like **LAG()**, **LEAD()**, etc.

---

### **6. Advanced Concepts**
   - **Indexes**: How they improve query performance.
   - **Views**: Creating reusable query structures.
   - **Stored Procedures and Triggers**: Automating operations.
   - **Transactions**: Ensuring data consistency with `COMMIT` and `ROLLBACK`.

If you're looking for the second-highest salary and only that single value from the Employees table, the query below will work to return just one record:



This query orders the salaries in descending order and limits the result to just one value—the second-highest salary.

Querys :

1. Write a query to find the second-highest salary from an **Employees** table.  
```sql
SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);
```
only Particuler : 

```sql
SELECT salary AS second_highest_salary
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees)
ORDER BY salary DESC
LIMIT 1;
```
