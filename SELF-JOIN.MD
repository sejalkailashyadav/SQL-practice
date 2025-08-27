Perfect — you want **practice questions with actual sample tables and data**, not just schema. Let me give you a few full examples (like LeetCode) where solving naturally involves a **self join**.

---

## Question 1: Employees Who Earn More Than Their Manager

**Table: employees**

```text
id | name    | salary | manager_id
---+---------+--------+-----------
 1 | Alice   | 70000  | NULL
 2 | Bob     | 40000  | 1
 3 | Carol   | 80000  | 1
 4 | David   | 30000  | 2
 5 | Eve     | 50000  | 2
```

**Task:** Find the names of employees who earn more than their manager.
**Hint:** You’ll need to join the table to itself (`employees e1 JOIN employees e2 ON e1.manager_id = e2.id`).

---

## Question 2: Previous Order of Each Customer

**Table: orders**

```text
order_id | customer_id | order_date
---------+-------------+------------
   101   | 1           | 2023-01-01
   102   | 1           | 2023-01-05
   103   | 2           | 2023-01-03
   104   | 1           | 2023-01-10
   105   | 2           | 2023-01-08
```

**Task:** For each order, find the immediately previous order by the same customer.
Expected columns: `customer_id, order_id, order_date, previous_order_id`.

---

## Question 3: Students With the Same Teacher

**Table: students**

```text
student_id | student_name | teacher_id
-----------+--------------+-----------
   1       | John         | 10
   2       | Mary         | 10
   3       | Alex         | 11
   4       | Emma         | 10
   5       | Tom          | 12
```

**Task:** List all pairs of students who share the same teacher.
Expected output example: `(John, Mary), (John, Emma), (Mary, Emma)` since they all have `teacher_id = 10`.

---

## Question 4: Consecutive Days of Activity

**Table: user\_activity**

```text
user_id | activity_date
--------+---------------
   1    | 2023-01-01
   1    | 2023-01-02
   1    | 2023-01-04
   2    | 2023-01-01
   2    | 2023-01-03
```

**Task:** Find users who logged in on **two consecutive days**.
Expected output: `user_id = 1` with dates `2023-01-01` and `2023-01-02`.

---

## Question 5: Next Purchase of the Same Product

**Table: purchases**

```text
purchase_id | product_id | purchase_date
------------+------------+--------------
    1       | 101        | 2023-01-01
    2       | 101        | 2023-01-05
    3       | 102        | 2023-01-03
    4       | 101        | 2023-01-07
    5       | 102        | 2023-01-08
```

**Task:** For each purchase, find the **next purchase** of the same product.
Expected output example: for purchase\_id `1`, next purchase\_date is `2023-01-05`.

---

Do you want me to **solve one of these step by step with the self join query**, so you see exactly how to approach it, or would you like to first attempt them yourself?
