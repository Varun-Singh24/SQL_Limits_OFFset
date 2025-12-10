# SQL_Limits_OFFset

# 📌 SQL Practice: LIMIT & OFFSET Queries

This repository contains an SQL script demonstrating the usage of **LIMIT** and **OFFSET** in MySQL to control the number of rows returned in query results.  
It uses the existing `employees` database and performs multiple queries to illustrate pagination and controlled data retrieval.
---

## 📂 File Included

| File Name | Description |
|----------|-------------|
| **Q4_Limit_OFFSET.sql** | SQL script showing examples of LIMIT, OFFSET, and filtered LIMIT queries |

---

## 📝 Overview

The script includes:

### ✔️ Accessing the Database
```sql
USE employees;
SHOW TABLES;
SELECT * FROM employees;
````

---

## 🚀 LIMIT Usage Examples

### 🔹 Get Top 5 Rows

```sql
SELECT * FROM employees LIMIT 5;
```

### 🔹 LIMIT With OFFSET

Shows how to skip rows and fetch the next set (pagination concept).

```sql
SELECT * FROM employees LIMIT 5 OFFSET 5;   -- rows 6 to 10
SELECT * FROM employees LIMIT 5 OFFSET 2;   -- rows 3 to 7

SELECT * FROM employees
LIMIT 5 OFFSET 10;  -- rows 11 to 15
```

### ℹ️ Note

* Default `OFFSET` is **0**
* Meaning:

  ```sql
  LIMIT 5;
  ```

  is equivalent to:

  ```sql
  LIMIT 5 OFFSET 0;
  ```

---

## 🎯 LIMIT With WHERE Condition

### 🔹 Fetch top 5 employees from Sales department

```sql
SELECT * FROM employees 
WHERE department = 'Sales' 
LIMIT 5 OFFSET 0;
```

### 🔹 Same as above (OFFSET default)

```sql
SELECT * FROM employees 
WHERE department = 'Sales' 
LIMIT 5;
```

### 🔹 Skip first 10 Sales employees and return next 5

```sql
SELECT * FROM employees 
WHERE department = 'Sales' 
LIMIT 5 OFFSET 10;
```

---

## 📘 Purpose of This Script

This SQL file helps you understand:

* How `LIMIT` works
* How `OFFSET` skips rows
* How LIMIT + OFFSET enable pagination
* Using filtering + pagination together

It’s perfect for beginners practicing MySQL query optimization and paging techniques.

---

## 🤝 Contributing

Feel free to contribute by:

* Adding pagination examples using `ORDER BY`
* Adding sample datasets or advanced query examples

---

## 📄 License

This project is open-source and available for learning and practice.
