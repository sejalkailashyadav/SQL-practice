### **🧠 Schema: `Employees`, `Departments`, `Salaries`**

#### Tables:

1. **Employees**
   \| emp\_id | name     | dept\_id | hire\_date  |
   \|--------|----------|---------|------------|
   \| 1      | Alice    | 10      | 2021-01-15 |
   \| 2      | Bob      | 20      | 2020-03-22 |
   \| 3      | Charlie  | 10      | 2019-06-10 |
   \| 4      | Diana    | 30      | 2023-02-01 |
   \| 5      | Evan     | 20      | 2022-09-05 |

2. **Departments**
   \| dept\_id | dept\_name  |
   \|---------|------------|
   \| 10      | HR         |
   \| 20      | Engineering|
   \| 30      | Marketing  |

3. **Salaries**
   \| emp\_id | salary   | effective\_from |
   \|--------|----------|----------------|
   \| 1      | 60000    | 2021-01-15     |
   \| 1      | 65000    | 2022-01-01     |
   \| 2      | 70000    | 2020-03-22     |
   \| 3      | 62000    | 2019-06-10     |
   \| 4      | 50000    | 2023-02-01     |
   \| 5      | 68000    | 2022-09-05     |

---

### 🔍 **Q1. Latest Salary per Employee**

> Write a SQL query to get the **latest salary** of each employee.

---

### 🔍 **Q2. Department-wise Average Salary (Current Only)**

> Write a query to get the **average current salary** per department.

---

### 🔍 **Q3. Longest Tenured Employee per Department**

> Write a query to find the **employee who has been in each department the longest**.

---

### 🔍 **Q4. Employees Who Got a Raise**

> Write a query to list employees who received **more than one salary record** (i.e., have received at least one raise).

---

### 🔍 **Q5. Second Highest Current Salary**

> Write a query to get the **second highest current salary** among all employees.

---

### ✅ 1. `Departments` Table

```sql
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
```

---

### ✅ 2. `Employees` Table

```sql
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
```

---

### ✅ 3. `Salaries` Table

```sql
CREATE TABLE Salaries (
    emp_id INT,
    salary INT,
    effective_from DATE,
    PRIMARY KEY (emp_id, effective_from),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);
```

---

### 🚀 Sample Data Insert

Would you also like the `INSERT` queries for this sample data?

Let me know if you want to:

* Insert data now,
* Start solving **Q1** (latest salary per employee), or
* Add more complexity (indexes, constraints, etc.)

---

### 🔸 `Departments` Table Data

```sql
INSERT INTO Departments (dept_id, dept_name) VALUES
(10, 'HR'),
(20, 'Engineering'),
(30, 'Marketing');
```

---

### 🔸 `Employees` Table Data

```sql
INSERT INTO Employees (emp_id, name, dept_id, hire_date) VALUES
(1, 'Alice', 10, '2021-01-15'),
(2, 'Bob', 20, '2020-03-22'),
(3, 'Charlie', 10, '2019-06-10'),
(4, 'Diana', 30, '2023-02-01'),
(5, 'Evan', 20, '2022-09-05');
```

---

### 🔸 `Salaries` Table Data

```sql
INSERT INTO Salaries (emp_id, salary, effective_from) VALUES
(1, 60000, '2021-01-15'),
(1, 65000, '2022-01-01'),
(2, 70000, '2020-03-22'),
(3, 62000, '2019-06-10'),
(4, 50000, '2023-02-01'),
(5, 68000, '2022-09-05');
```

---

✅ Now your tables are ready and filled with data!

Would you like to:

* Start solving the **first SQL interview question** now?
* Add more employees or salary changes for practice?
  Let’s continue step by step.
