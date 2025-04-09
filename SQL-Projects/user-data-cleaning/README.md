# User Data Cleaning Project

This project cleans a dataset of user information stored in a SQL table named `users`. It includes an initial setup script and a cleaning script to remove specific rows based on conditions related to last names, salaries, and birth years.

## Files
- **`initial.sql`**: Creates the `users` table and populates it with the initial dataset.
- **`user_data_cleaning.sql`**: Contains SQL queries to delete specific rows from the `users` table.

## Prerequisites
- A SQL database environment (e.g., MySQL, PostgreSQL, SQLite).
- Basic knowledge of running SQL scripts.

## Setup
1. **Create a Database**:
   - Open your SQL environment and create a new database. For example:
     ```sql
     CREATE DATABASE user_db;
     USE user_db;