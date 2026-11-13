# SQL Transactions: Student Table (Sales Database)

A practical SQL assignment on managing data changes with **transactions**, built in MySQL on top of the `sales` database.

**Author:** Run Hajir Shurie
**Tool:** MySQL Workbench
**Database:** `sales`

---

## Overview

This week's focus was managing changes to data using transactions and analyzing data with aggregate functions. This assignment practises the first part: creating a table, inserting records, and updating a record safely, all inside the `sales` database.

## What the script does

| Question | Task | SQL used |
|----------|------|----------|
| 1 | Create a `student` table with `id` (primary key), `fullName` (max 100 characters) and `age` | `CREATE TABLE` |
| 2 | Insert at least 3 student records | `INSERT INTO` inside `START TRANSACTION` / `COMMIT` |
| 3 | Update the age of the student with ID 2 to 20 | `UPDATE ... WHERE` inside `START TRANSACTION` / `COMMIT` |

## Table structure

| Column | Type | Notes |
|--------|------|-------|
| `id` | INT | Primary key, unique for each student |
| `fullName` | VARCHAR(100) | Student's full name |
| `age` | INT | Student's age |

## How to run it

1. Open MySQL Workbench and connect to your local server.
2. Run `salesdb.sql` first to create and load the `sales` database.
3. Open a new query tab and load `student_transactions.sql`.
4. Make sure nothing is highlighted, then click the lightning bolt to run the whole script.
5. The final `SELECT * FROM student;` shows the result.

> Run the script only once. Running it again gives "Table 'student' already exists". To start over, run `DROP TABLE student;` first.

## Expected result

| id | fullName | age |
|----|----------|-----|
| 1 | Amina Hassan | 19 |
| 2 | John Mwangi | 20 |
| 3 | Fatuma Abdi | 22 |

Student 2's age changed from 21 to 20 after the `UPDATE`.

![Result](result.png)

## Key concepts practised

- **Transactions:** `START TRANSACTION` groups changes together and `COMMIT` saves them permanently. If something goes wrong before `COMMIT`, `ROLLBACK` can undo them.
- **Primary key:** guarantees every row can be identified uniquely.
- **`WHERE` in `UPDATE`:** without it, every row in the table would be changed.
- **DDL vs DML:** `CREATE TABLE` saves automatically in MySQL, so it stays outside the transaction, while `INSERT` and `UPDATE` can be rolled back before commit.

## Files in this repo

- `student_transactions.sql`: the full solution script
- `README.md`: this file
