# Hospital Data Cleaning Project

This project cleans a dataset of hospital information stored in a SQL table named `hospitals`. It includes SQL scripts to set up the table and perform data cleaning tasks such as identifying errors, removing problematic rows, and correcting misspelled names.

## Files
- **`initial.sql`**: Creates the `hospitals` table with the initial dataset.
- **`hospital_data_cleaning.sql`**: Contains SQL queries for cleaning the data.

## Usage
Run each query in your SQL database environment (e.g., MySQL, PostgreSQL) in sequence:
1. Section 1: Selects rows with errors for review.
2. Section 2: Deletes rows with errors in specific columns.
3. Section 3: Updates the `name` column to correct errors.

## Notes
- Ensure you back up your database before running Section 2, as it permanently deletes data.
- Tested with a dataset where errors are marked with 'x'.

## Prerequisites
- A SQL database environment (e.g., MySQL, PostgresSQL, SQLite).
- Basic knowledge of running SQL scripts.

## Setup
1. **Create a Database**:
   - Open your SQL environment and create a new database. For example:
     ```sql
     CREATE DATABASE hospital_db;
     USE hospital_db;