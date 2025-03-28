### **How Indexes Work in E-commerce Product Search (Technical Explanation)**

When a user searches for **"Nike Shoes"** on an e-commerce platform like Amazon, the database must quickly find and return matching products from a massive product catalog. To optimize this search, a well-designed indexing strategy is used.

---

### **Database Table Structure Example**
Let’s assume we have a `products` table:

```sql
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT,
    brand VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10,2),
    stock INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

Without an index, searching for "Nike Shoes" requires a **full table scan**:

```sql
SELECT * FROM products WHERE name LIKE '%Nike Shoes%';
```

This is inefficient for millions of products because it checks every row.

---

### **Using an Index for Fast Search**
To improve performance, we can create an index on the `name` column:

```sql
CREATE INDEX idx_product_name ON products(name);
```

Now, when we search:

```sql
SELECT * FROM products WHERE name LIKE 'Nike%';
```

The database will:
1. Use the **B-tree index** (default for MySQL, PostgreSQL) to quickly locate products starting with "Nike".
2. Avoid scanning the entire table.
3. Return results in milliseconds.

---

### **How the Index Works Internally**
1. **B-tree Index Structure**:
   - The index stores product names in a balanced tree structure.
   - Searching for "Nike" follows the tree branches instead of scanning rows.

2. **Search Optimization**:
   - Queries like `WHERE name LIKE 'Nike%'` benefit from the index because they match from the start.
   - Queries with `'%Nike%'` cannot use the index efficiently because the wildcard (`%`) is at the beginning.

---


### **Conclusion**
- **B-tree indexes** work well for prefix searches (`Nike%`).
- **Full-text indexes** improve searches on product descriptions.
- **Composite indexes** speed up multi-column queries.


  



### ✅ **Retrieve all campaigns created in the last 7 days**  
```sql
SELECT `campaign_name` FROM `campaigns` 
WHERE created_at >= NOW() - INTERVAL 7 DAY;
```
*Explanation:* `CURRENT_DATE() - INTERVAL 7 DAY_HOUR` is incorrect. Use `NOW() - INTERVAL 7 DAY` to fetch campaigns from the last 7 days.

---

### ✅ **Find the total number of campaigns in the database**  
✔ **Both queries are correct:**  
```sql
SELECT COUNT(*) FROM campaigns;
SELECT COUNT(campaign_name) FROM campaigns;
```

---

### ✅ **List all unique phone numbers stored in `campaign_details`**  
✔ **Your query is correct:**  
```sql
SELECT DISTINCT `phone_number` FROM `campaign_details`;
```

---

### ✅ **Get the total count of phone numbers associated with each campaign**  
✔ **Your query is correct:**  
```sql
SELECT COUNT(`phone_number`) AS count_phone, campaign_id  
FROM campaign_details 
GROUP BY `campaign_id`;
```

---


✅ **Fixed Query (Group by `template_id`)**  
```sql
SELECT COUNT(`phone_number`) AS count_phone, template_id 
FROM log 
GROUP BY `template_id`;
```
*Explanation:* You should group by `template_id` instead of `campaign_id` to count messages per template.


---

### ✅ **Select all unique phone numbers from `message_logs` where messages were sent successfully**  
✔ **Your query is correct:**  
```sql
SELECT DISTINCT `phone_number`  
FROM message_logs  
WHERE `description` LIKE 'Message sent successfully'  
ORDER BY `id` DESC;
```

### **Practical Steps for Joins and Subqueries**  

#### **1. INNER JOIN (Most Common Join)**
- Retrieves matching rows from both tables.  
```sql
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;
```
✅ *Practice:* Try running this without an `INNER JOIN` to see the difference.  

--- 

#### **2. LEFT JOIN (All from Left Table, Matching from Right)**
- Retrieves all rows from the left table, even if there’s no match in the right.  
```sql
SELECT customers.name, orders.order_id
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;
```
✅ *Practice:* Add a `WHERE orders.order_id IS NULL` to find customers who haven't placed orders.  

---

#### **3. RIGHT JOIN (All from Right Table, Matching from Left)**
- Retrieves all rows from the right table, even if there’s no match in the left.  
```sql
SELECT employees.name, projects.project_name
FROM employees
RIGHT JOIN projects ON employees.id = projects.employee_id;
```
✅ *Practice:* Identify projects with no assigned employees.  

---

#### **4. FULL OUTER JOIN (All Data from Both Tables)**
- Returns all records from both tables, with NULLs where no match is found.  
```sql
SELECT students.name, courses.course_name
FROM students
FULL OUTER JOIN courses ON students.course_id = courses.id;
```
✅ *Practice:* Identify records that are unmatched in either table.  

---

#### **5. Cross Join (Cartesian Product)**
- Returns every combination of rows from both tables.  
```sql
SELECT employees.name, shifts.shift_time
FROM employees
CROSS JOIN shifts;
```
✅ *Practice:* Use with caution—this can generate a huge number of rows!  

---

#### **6. Self Join (Joining a Table to Itself)**
- Useful for hierarchical data (e.g., employees and managers).  
```sql
SELECT e1.name AS Employee, e2.name AS Manager
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.id;
```
✅ *Practice:* Find employees who report to a specific manager.  

---

### **Subqueries (Queries inside Queries)**  

#### **7. Subquery in SELECT (Derived Data)**
```sql
SELECT name, (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;
```
✅ *Practice:* Compare each employee’s salary to the company average.  

---

#### **8. Subquery in WHERE (Filtering with Subquery)**
```sql
SELECT name FROM employees
WHERE department_id = (SELECT id FROM departments WHERE department_name = 'IT');
```
✅ *Practice:* Modify to find employees in other departments.  

---

#### **9. Subquery in FROM (Using as a Temporary Table)**
```sql
SELECT department_name, avg_salary
FROM (SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id) AS dept_avg
JOIN departments ON dept_avg.department_id = departments.id;
```
✅ *Practice:* Find departments with an average salary above a threshold.  

---

. **Retrieve all campaign names created in the last 3 days**  
   ✅ **Correct**  
   ```sql
   SELECT `campaign_name` FROM `campaigns` WHERE created_at > NOW() - INTERVAL 3 DAY;
   ```

2. **List all phone numbers from `campaign_details` that are linked to a specific `campaign_id`**  
   ❌ **Incorrect COUNT usage (it counts total rows, not phone numbers)**  
   ✅ **Fixed Query**  
   ```sql
   SELECT `campaign_id`, COUNT(`phone_number`) AS phone_count FROM `campaign_details` GROUP BY `campaign_id`;
   ```

3. **Get the total count of campaigns in the database**  
   ❌ **Incorrect COUNT syntax (single quotes around column names are incorrect)**  
   ✅ **Fixed Query**  
   ```sql
   SELECT COUNT(`campaign_name`) AS total FROM `campaigns`;
   ```

4. **Find all unique phone numbers from `log` that have a status of `1`**  
   ❌ **Wrong table name (`log` instead of `message_logs`) and incorrect WHERE condition (`description` instead of `status`)**  
   ✅ **Fixed Query**  
   ```sql
   SELECT DISTINCT `phone_number` FROM `message_logs` WHERE `status` = 1;
   ```

5. **Find the number of campaigns created each month**  
   ❌ **Sorting issue (Month names are not sorted correctly in queries without sorting by year and month number)**  
   ✅ **Fixed Query**  
   ```sql
   SELECT COUNT(`campaign_name`) AS campaign_count, 
          DATE_FORMAT(`created_at`, '%Y-%m') AS month 
   FROM `campaigns` 
   GROUP BY DATE_FORMAT(`created_at`, '%Y-%m') 
   ORDER BY DATE_FORMAT(`created_at`, '%Y-%m');
   ```

6. **Retrieve the latest 10 entries from `message_logs`**  
   ❌ **Wrong table name (`log` instead of `message_logs`) and wrong ordering (ASC instead of DESC)**  
   ✅ **Fixed Query**  
   ```sql
   SELECT * FROM `message_logs` ORDER BY `id` DESC LIMIT 10;
   ```

7. **Find the top 3 campaigns with the highest number of associated phone numbers**  
   ✅ **Correct but can be optimized for clarity**  
   ```sql
   SELECT `campaign_id`, COUNT(`phone_number`) AS phone_count 
   FROM `campaign_details` 
   GROUP BY `campaign_id` 
   ORDER BY phone_count DESC 
   LIMIT 3;
   ```

8. **Get the campaign with the highest number of associated phone numbers**  
   ✅ **Correct**  
   ```sql
   SELECT `campaign_id`, COUNT(`phone_number`) AS phone_count 
   FROM `campaign_details` 
   GROUP BY `campaign_id` 
   ORDER BY phone_count DESC 
   LIMIT 1;
   ```

9. **Get the second highest campaign with the most associated phone numbers**  
   ✅ **Correct**  
   ```sql
   SELECT `campaign_id`, COUNT(`phone_number`) AS phone_count 
   FROM `campaign_details` 
   GROUP BY `campaign_id` 
   ORDER BY phone_count DESC 
   LIMIT 1 OFFSET 1;
   ```

10. **Get all templates where `media_url` is `NULL`**  
   ❌ **Wrong NULL check (`"NULL"` is a string, use `IS NULL`)**  
   ✅ **Fixed Query**  
   ```sql
   SELECT * FROM `templates` WHERE `media_url` IS NULL;
   ```

### **Key Fixes:**
- Used proper **NULL** checking (`IS NULL` instead of `"NULL"`).
- Ensured correct **table names** (`message_logs` instead of `log`).
- Fixed **COUNT syntax** (removed incorrect single quotes around column names).
- Used **DESC sorting** where needed (for latest logs and highest counts).
- Improved **date formatting and sorting** to ensure correct month order.  

Now your queries should work correctly! 🚀
9. Retrieve all phone numbers that exist in `log` but not in `campaign_details`.  
10. Find the most frequently used template in the `log` table.  
11. Find the campaign that has sent the highest number of messages.  
12. Get the campaign(s) with the lowest number of phone numbers.  
13. Retrieve the second highest `campaign_id` from the `campaigns` table.  
14. Find the second most used template from the `templates` table.  
15. Get a list of all campaigns along with their total message count, sorted in descending order.  
